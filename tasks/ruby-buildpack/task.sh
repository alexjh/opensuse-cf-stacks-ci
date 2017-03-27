#!/bin/sh

cd opensuse-cf-ruby-buildpack

# TODO Use the bundler built from `binary-builder`?
gem install bundler

export BUNDLE_GEMFILE=cf.Gemfile
if [ ! -z "$RUBYGEM_MIRROR" ]; then
  bundle config mirror.https://rubygems.org "${RUBYGEM_MIRROR}"
fi
bundle install
bundle exec buildpack-packager --uncached
bundle exec buildpack-packager --cached

