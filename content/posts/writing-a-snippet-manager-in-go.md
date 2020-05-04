+++
title = "Writing a Snippet Manager in Go"
author = ["Tuomo Syvänperä"]
date = 2019-05-17T11:31:00+03:00
lastmod = 2019-05-22T11:33:56+03:00
tags = ["go"]
type = "post"
draft = false
+++

As I mentioned in an earlier post, I've been fooling around with Go quite a bit
lately and was looking for a good project with which to flex my Go muscles.

There are quite a few snippet managers in the world already, but most of the
best ones have a GUI and I was looking for something that I could use
exclusively from the command line.

I found a few command line ones too, like [Buku](https://github.com/jarun/Buku) and [Pet](https://github.com/knqyf263/pet), but none of them were
quite what I was looking for. Buku is great for managing bookmarks and Pet for
shell command snippets, but I wanted something that could handle all my snippet
needs in one package.

So I decided to write one. And in Go as that's my language of choice right now,
especially for command line apps.

It's called [Gossip](https://github.com/syvanpera/gossip) (don't ask, of course it had to start with **Go** and it kinda
sounds like snip, so there you go).

It's still in it's early stages, there's no way to edit the snippets yet (other
than adding tags) and I have a lot of stuff on the backlog that I'd like to add
to it, but it's already quite usable.

So what do I think of Go after this small excursion into it?

Well, I really really like it but then again there are also some things I have a
mixed feeling about. I love some features like the deferred function calls and
the structural typing. But some things like the extensive use of `nil` isn't
really my thing.  And the language, or some popular libraries at least (looking
at you [Cobra](https://github.com/spf13/cobra) and [Viper](https://github.com/spf13/viper))
seem to encourage the use of global state and variables quite heavily.
But global stuff does make some things easier too, if you use them sparingly.

And Go seems like a perfect fit for REST API servers and microservices. Actually
if you would ask me right now, I would certainly recommend Go over Node in the
backend for these. And the fact that Go is really quite simple and the compiler
is crazy fast, makes the development cycle almost as fast as when using JS &
Node.

In some ways, even though it's a relatively new language, Go seems like the old
friend I've missed for a long time. It feels like a blast from the past from my
C-programming days, but then again it's modern and fresh.

What really took me by surprise, is that even though I've been a proponent for
functional programming languages and style for some time know, I still managed
to keep an open mind and embrace a language that certainly is in no way, shape
or form a functional language.

Next step for me is to start getting the know the concurrent side of Go, as
that's where the real beef is in Go.

I'm sure I will post more Go stuff in the future, but I need to play around with
it some more first.

In the mean time, check out [Gossip](https://github.com/syvanpera/gossip) at Github if you're interested. I think it's
pretty neat!

{{< figure src="/images/gossip-demo.gif" caption="Figure 1: Here's a gif of Gossip in action" >}}
