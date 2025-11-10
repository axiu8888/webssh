#!/bin/bash

dir=$PWD
echo "webfront curDir -> $PWD"
cd ../web

npm install
npm run build

cd $dir
