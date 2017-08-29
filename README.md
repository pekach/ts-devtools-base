# ts-devtools-base

Base Dockerfile for TypeScript development tools

### How to run:

`docker run -ti --rm -v "$(pwd)":/mnt/workspace pekach/ts-devtools-base:latest <CMD>`

where `<CMD>` can be:
 - install: Install dependencies
 - build: Fast build project
 - build-prod: Build project (optimized)
 - sync: Sync with git upstream
 - serve: Serve files at "4200" port
 - test: Test project
 - test-watch: Test and watch for changes
 - build-watch: Build and watch for changes
