#!/bin/bash -e

function run() {
  sed -i 's/TEMPLATE/TEMPLATEa/g' web/templates/index.pug
  docker run -ti --rm \
    -v /var/run/docker.sock:/var/run/docker.sock \
    -v $PWD:/workspace \
    -w /workspace \
    bazel-npm:latest run web 2>&1
  docker tag bazel/web:web gcr.io/convoy-adapter/cloudcats:incremental
  docker push gcr.io/convoy-adapter/cloudcats:incremental
}

function clean() {
  sudo rm -rf .bazel
  sudo rm -rf bazel-*
}

clean > /dev/null
time run > /dev/null
clean > /dev/null
time run > /dev/null
clean > /dev/null
time run > /dev/null
clean > /dev/null
time run > /dev/null
clean > /dev/null
time run > /dev/null
