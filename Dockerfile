FROM gcr.io/cloud-builders/bazel
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get update && apt-get install nodejs