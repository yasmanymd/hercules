#!/bin/sh
echo "Starting Bootstrap"
npx directus bootstrap
if [ -f "/directus/src/schema/schema.yml" ]; 
then    
  echo "Applying schema"
  npx directus schema apply --yes /directus/src/schema/schema.yml
fi
echo "Running custom migrations"
npx directus database migrate:latest
echo "Starting Directus"
npm run dev