## Flavors
|    **Tag**    | **Description**                                                | 
|:-------------:|----------------------------------------------------------------|
|    exited     | Outputs `fortune` and exits with error code 0                    |
| exited-quiet  | Just exits with error code 0                                   |
|    running    | Outputs `fortune`, sleeps, and exits with error code 0 on signal |
| running-quiet | Just sleeps and exits with error code 0 on signal              |
## Example
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
