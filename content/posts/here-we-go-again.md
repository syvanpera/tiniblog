+++
title = "Let's try this blogging thing again"
author = ["Tuomo Syvänperä"]
date = 2019-05-02T13:39:00+03:00
lastmod = 2019-05-02T13:46:30+03:00
tags = ["emacs", "hugo", "org"]
type = "post"
draft = false
+++

I've tried a few times in the past to start writing a blog, but it has never
really gotten anywhere. My interest has always waned after the initial
enthusiasm.

So why would this time be any different?

Well it probably won't, but I just had to try and see what it would be like
to blog using just Emacs & Org-mode with a static site generator and having
a highly automated publishing process on top of that.
Now that these static site generators are all the craze, I just had to see
what they're all about.

I chose [Hugo](https://gohugo.io/) as my static site generator for a few reasons.

1.  It's simple and fast
2.  It's written in Go (I've been on a Go kick lately, more about that in a
    future post perhaps)
3.  It works really well with Emacs & Org

These days Hugo supports Org mode files natively, but I found that the
suggested workflow of ox-hugo suited me better. And it also seems to
support some Org feature better than the built-in one.

So what **does** my publishing flow look like?

-   All posts are written into a single org-mode file. Each post has it's
    own heading under the main _Posts_ heading.
-   Each post is an Org _TODO_ entry, that can have 3 different states:
    1.  **TODO**: Means that it's just a quick reminder about a possible topic for a
        future post. Usually no  more than a single line.
    2.  **DRAFT**: Is just that, a blog post in draft mode. This is not published by
        Hugo, but is shown on my local dev Hugo, which is set to publish drafts too
    3.  **DONE**: Which means it's ready to be published. When you mark it as done in
        Org it automatically sets the _CLOSED_ time for it, which is used as the
        publication time in Hugo.
-   I use [ox-hugo](https://ox-hugo.scripter.co/) to convert the org file to the markdown that Hugo
    supports. I've set it up so that when I save the _posts_ file, Emacs
    automatically kicks in he ox-hugo conversion.
-   I run a local Hugo installation (with the help of Prodigy on Emacs) too and
    while I'm writing the post, every time I save it, the browser automatically
    refreshes and navigates to the changed page/post and so I can have a live
    preview of the changes
-   When I'm satisfied with the content and ready to go live, I just push the
    changes to the _master_ branch of my blog repo in [Github](https://github.com/) and [Netlify](http://www.netlify.com)
    automatically picks up the changes and builds and deploys the new version.

Here's a screenshot of my setup, editing this very post.
![](/images/img-2019-05-02-132213.png)

What's next? Well I'd at least want to replace the theme of my blog with
something a bit nicer, but I'm not interested in tweaking HTML & CSS right
now, so that's just gonna have to wait.

There are a couple of tweaks I'd like to do to the publishing flow (like
easier handling of images and screenshots etc) and now I'm sure there's
a bunch of keyboard shortcuts and other enhancements I need to do to Emacs
to make it easier to work with, but for now this seems to work just fine.

I'm also determined to get my task management and note taking in better shape
and I'm sure Emacs and org-mode will be playing a major role in that also.
I have already started to streamline the way I can add todos and notes with
org-capture, but there are a few things missing there still. I'm sure I will
write about the setup once it's up and running and I've had some time to battle
test it.

Getting this workflow figured out and and tweaking my environment has been a
great deal of fun. Lately I've been moving more and more of my other activities
to Emacs and command line and it's going to take some time to get it all set up
just the way I want it and get everything running as smoothly as possible.

So maybe that at least gives me more material to write about here.
