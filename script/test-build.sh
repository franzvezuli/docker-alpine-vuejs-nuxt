#!/bin/sh

ENV_FILE=.env
if [ ! -f $ENV_FILE ]; then
  echo "Error: Please set up your .env file. Please read and review the .env-template included."
fi

# Search for APP_ENV if set to prod
app_env=dev
while IFS= read -r line; do
  line_parts=(${line//=/})
#  echo ${line_parts[@]}
  if [ ${line_parts[0]} == "APP_ENV" ]; then
    app_env_found=true
  fi
done < $ENV_FILE

#str=a:b:c:d:e
#arr=(${str//:/ })
#echo ${arr[@]}

if [ $app_env_found == false ]; then
  echo "Error: APP_ENV not found in your .env file. Please read and review the .env-template included."
fi

#

#if [ "$dev" = true ] ; then
#  docker build -f Dockerfile.dev -t nuxt .
#else
#  docker build -f Dockerfile.prod -t nuxt .
#fi
