+++
title = "First Post"
author = ["Tuomo Syvänperä"]
date = 2019-05-01T09:02:00+03:00
lastmod = 2019-05-01T11:36:22+03:00
tags = ["hugo", "org"]
categories = ["emacs"]
draft = false
+++

## First heading within the post {#first-heading-within-the-post}

-   This post will be exported as
    `content/posts/first-post.md`.
-   Its title will be "First Post".
-   It will have _hugo_ and _org_ tags.
-   The _lastmod_ property in the front-matter is set automatically to
    the time of export.
-   It's draft state will be marked as `true` as the subtree has the
    todo state set to _TODO_.

{{< highlight 7ang "hl_lines=8" >}}
echo 'Some source code content'
echo 'This line will be highlighted'
echo "This one won't"
{{< /highlight >}}

And here's some Emacs Lisp:

```emacs-lisp
(def-package! org-gcal
  :commands (org-gcal-sync
             org-gcal-fetch
             org-gcal-post-at-point
             org-gcal-delete-at-point)
  :config
  (load-file "~/.emacs-secrets.el")
  ;; hack to avoid the deferred.el error
  (defun org-gcal--notify (title mes)
    (message "org-gcal::%s - %s" title mes)))
```
