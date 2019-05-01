+++
title = "First Post"
author = ["Tuomo Syvänperä"]
lastmod = 2019-05-01T15:07:25+03:00
tags = ["hugo", "org"]
draft = true
+++

## First heading within the post {#first-heading-within-the-post}

-   This post will be exported as
    `content/posts/first-post.md`.
-   Its title will be "First Post".
-   It will have _hugo_ and _org_ tags.
-   It's draft state will be marked as `true` as the subtree has the
    todo state set to _TODO_.

And here's some code:

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
