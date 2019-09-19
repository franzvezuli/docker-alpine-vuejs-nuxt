# docker-alpine-vuejs-nuxt
A standard Nuxt "Hello World" app but dockerized to make building and deploying portable. This can be used as a template.

Setup is as following using the `yarn create nuxt-app` command.

Choice Asked | Choice Picked |
--- |--- |
Package manager | yarn |
UI framework | Vuetify |
Server-side frameworks| None (Nuxt default server)|
Nuxt.js modules | None |
linting tools | EsLint, Prettier
Testing frameworks | None |
Rendering mode | Universal (SSR)|
Development tools | None|

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
- Will probably ammend the list above to be as bare-bones as it could be in another update.
  For example, removing UI Framework and linting tools. Any of these can be configured, but this is
  supposed to just be a docker bootstrap for your project.
- Other optimizations as they come to mind...
