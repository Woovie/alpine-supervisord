# alpine-supervisord

Minimal docker image that builds off `mhart/alpine-node:6`.

Currently Alpine v3.4

currently contains:
- node 6.9.1
- npm 3.10.8
- supervisor installed via `apk` (currently 3.2.0)

For any images that build on top of this, add your program specific supervisor conf files to `/etc/supervisor/conf.d/`.
