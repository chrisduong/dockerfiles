# Drone plugin for Dependency Check

## run.sh

We need to capture the PID of the process so we can graceful shutdown this container. SEE: [Container does not catch signals and exit Ctrl-C](https://github.com/docker-library/mysql/issues/47#issuecomment-147397851)

## Usage

```sh
docker run --rm -it \
  -v $(pwd):/src -w /src \
  -e PLUGIN_PROJECT=abc \
  -e PLUGIN_SCAN=package.json \
  -v /Users/abc/depcheck-data:/usr/share/dependency-check/data \
  -e PLUGIN_REPORT=reports \
  chrisduong/drone-dep-check
```

## Resources

[Command Line Arguments](https://jeremylong.github.io/DependencyCheck/dependency-check-cli/arguments.html)