package(default_visibility = ["//visibility:public"])

load(
  "@io_bazel_rules_docker//docker:docker.bzl",
  "docker_build",
  "docker_push",
)

docker_build(
   name = "web",
   base = "@web_base//:image.tar",

   # Add our app.
   directory = "/app",
   # TODO(mattmoor): https://github.com/bazelbuild/bazel/issues/2176
   data_path = ".",
   files = glob([
      "**/*.js",
      "public/**/*",
      "templates/**/*"]),

   # Configure out app to run
   cmd = ["server.js"],
)

docker_push(
  name = "push",
  image = ":web",
  registry = "gcr.io",
  repository = "convoy-adapter/cloudcats/web"
)