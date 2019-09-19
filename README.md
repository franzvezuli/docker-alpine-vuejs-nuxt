# docker-alpine-vuejs-nuxt

## Build setup
Should build the image independent of your local setup
``` sh
$ script/build.sh
```

## Run the server
The initial dev server comes with hot reloading enabled

``` sh
$ script/server.sh
```

## Notes
- Have to setup a parser for the .env and build according to the environment variables set up (prod vs dev)
- Make the yarn install step only run when package.json has changed, if not should skip or try to use
 the docker layer cache
- Other optimizations as they come to mind...
