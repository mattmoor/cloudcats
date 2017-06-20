workspace(name = "cloudcats")

git_repository(
    name = "io_bazel_rules_docker",
    remote = "https://github.com/bazelbuild/rules_docker.git",
    commit = "df9d21334be0d45b6995f5f46024a3d2ea22eca9",
)

load(
  "@io_bazel_rules_docker//docker:docker.bzl",
  "docker_repositories", "docker_pull"
)
docker_repositories()

docker_pull(
  name = "node_base",
  registry = "gcr.io",
  repository = "distroless/nodejs",
)

git_repository(
    name = "rules_nodejs",
    remote = "https://github.com/mattmoor/rules_nodejs.git",
    commit = "6d7d86cb168c2f46517269cba95f76feb7f88786",
)

load("@rules_nodejs//:node.bzl", "node_image")

node_image(
  name = "web_base",
  package_json = "//web:package.json",
)