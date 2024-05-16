# docker-noop
This is a Docker noop container for doing silly things with compose. There are many like it, but this one is mine.

Prints output from `fortune` for giggles and then sleeps forever or until interrupted, whichever occurs first.

```
┌──[▄‽ᵇ]─[▂▂▂ˡ]─[▄ᵐ▁ˢ]──·[Wed·15·23:35]·
│ main !trk:1 
└─ [travis@firefall] ─ [~/Docu…ects/git/docker-noop] ∙ docker run --rm -it noop:running
noop> Your fortune of the run:
noop> 
noop> "Amnesia used to be my favorite word, but then I forgot it."
noop> 
noop> Going to sleep...
```
And then when it gets a termination signal of some kind (such as SIGINT from ^C):
```
^Cnoop> Waking up and exiting...
```
