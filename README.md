Guacamole
=========

# Deployment process

The release process is handled by the `bin/release` script.

    bundle exec script/release [major|minor]

By default, build version is bumped. To bump minor or major version, the script accepts `minor` or `major` as first argument. E.g. `script/release minor` or `script/release major`.

Here is what the script does :

1. fetch and merge latest code on `develop`
2. bump version
3. push `develop` on GitHub
3. fetch and merge latest code on `master`
4. merge `develop` in `master`
5. push `master` on GitHub
