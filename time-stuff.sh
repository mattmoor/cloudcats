#!/bin/bash -e

sed -i 's/TEMPLATE/TEMPLATEa/g' web/templates/index.pug
bazel run web
docker tag bazel/web:web gcr.io/convoy-adapter/cloudcats:incremental
docker push gcr.io/convoy-adapter/cloudcats:incremental

