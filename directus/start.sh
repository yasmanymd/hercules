#!/bin/sh
echo "Starting Bootstrap"
npx directus bootstrap
if [ -f "/directus/src/schema/schema.yml" ]; 
then    
  echo "Applying schema"
  npx directus schema apply --yes /directus/src/schema/schema.yml
fi
echo "Copying built extensions"
cp -r built_extensions/* extensions/
echo "Copying custom migrations"
mkdir -p extensions/migrations/
cp -r src/migrations/* extensions/migrations/
echo "Running custom migrations"
npx directus database migrate:latest
echo "Starting Directus"
npx directus start