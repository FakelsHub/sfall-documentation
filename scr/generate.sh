#!/bin/bash

set -xeu -o pipefail

site_dir="scr"
yml_dir="../docs_ru"
pages_dir="pages"

pushd .

cd "$site_dir"
mkdir -p "$pages_dir"
./yaml_to_md.py "$yml_dir/functions.yml" "$yml_dir/hooks.yml" "$pages_dir"

bundle install
bundle exec jekyll build

popd
