+++
title = "Adding screenshots to a post"
author = ["Tuomo Syvänperä"]
date = 2019-05-04T21:38:00+03:00
lastmod = 2019-05-04T21:44:38+03:00
tags = ["hugo", "emacs"]
type = "post"
draft = false
+++

In my previous post I mentioned that one thing I would like to tweak in my
blogging workflow is to have an easier method of adding screenshots to my posts.

And here's what I came up with for now.

The winning combination: Flameshot & Emacs YASnippets

I've setup a keyboard shortcut (`Super+Shift+4`, a nod towards macOS shortcuts)
that launches [Flameshot](https://flameshot.js.org/#/), which allows me to take the actual screenshot. When I
save the shot, I've set it up so that it automatically saves it to
`~/Pictures/Screenshots` folder with the name `scrot-<timestamp>.png`

Then I have a snippet called `scrot` defined (using [YASnippet](https://github.com/joaotavora/yasnippet)), which calls a
small elisp function that calls a simple shell script, which copies the latest
screenshot from the `~/Pictures/Screenshots` folder to my Hugo static image
folder and also returns the proper path to the image which can be used in a Hugo
`figure`.

So basically all I do is hit `Super+Shift+4`, take the shot and in Emacs I just
type `scrot` and hit `TAB`, write the caption and bam! Instant embedded
screenshot!

Below you can see the YASnippet definition, elisp function and shell script used.

```elisp
# -*- mode: snippet -*-
# name: Add latest screenshot as a Hugo figure
# key: scrot
# --
#+caption: $0
[[`(ts/scrot-to-blog)`]]
```

<div class="src-block-caption">
  <span class="src-block-number">Code Snippet 1</span>:
  The snippet that inserts the Hugo figure
</div>

```elisp
(defun ts/scrot-to-blog ()
  (interactive)
  (shell-command-to-string "~/scripts/scrot-to-blog.sh"))
```

<div class="src-block-caption">
  <span class="src-block-number">Code Snippet 2</span>:
  The elisp function called from the snippet
</div>

```bash
#!/usr/bin/env bash

filemask=~/Pictures/Screenshots/scrot-*
blog_img_dir=~/projects/personal/tiniblog/static/images

unset -v latest
for file in $filemask; do
  [[ $file -nt $latest ]] && latest=$file
done

if [[ ! -z "$latest" ]]
then
  cp $latest $blog_img_dir
  echo -n "/images/$(basename $latest)"
fi
```

<div class="src-block-caption">
  <span class="src-block-number">Code Snippet 3</span>:
  And finally the shell script that does the actual work
</div>

Next step? I'd probably like to try and convert the shell script to elisp so I
could get rid of the shell script altogether. Of course the shell script has the
added benefit of being able to use it outside of Emacs.

But then again, why would I ever want to do anything outside of Emacs?
