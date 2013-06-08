Oh this is an interesting question. Ok let me see if I can figure this out:

- output directory is configurable via app.coffee, just add `exports.output_path` and set it to whatever you want

- you could configure the assets directory like that but it would take a little jumping through hoops, since I automatically dump the assets folder into public. You could change `folder_config.views` in app.coffee to be something other than `assets`, then it should work like that.

- compiling to liquid is an interesting proposal. you'd need some sort of custom plugin for that, but it should be possible. All you'd really need to do is make a direct copy of the jade compiler, throw it in the `plugins` folder, then change the target to 'liquid' rather than 'html'.

I guess the big question is whether jade can get down with liquid syntax without breaking...