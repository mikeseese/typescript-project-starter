#!/usr/bin/env bash

echo "What's the name of the project?"
read project_name

echo "What's the name of the author?"
read author_name

echo "What's the author's email?"
read author_email

sed -i "s/PROJECT_NAME/$project_name/g" package.json
sed -i "s/AUTHOR_NAME/$author_name/g" package.json
sed -i "s/AUTHOR_EMAIL/$author_email/g" package.json

corepack prepare

yarn set version 3.6.1
yarn
yarn up

rm setup.sh
