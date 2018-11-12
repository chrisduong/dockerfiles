# Drone plugin for Dependency Check

## run.sh

We need to capture the PID of the process so we can graceful shutdown this container. SEE: [Container does not catch signals and exit Ctrl-C](https://github.com/docker-library/mysql/issues/47#issuecomment-147397851)

## Usage

### Environment Variables

**PLUGIN_SCAN:** default is the current directory.

**PLUGIN_REPORT:** default is the current directory.

**PLUGIN_FORMAT:** default is HTML.

### Docker command

**Cache**:

```sh
docker run --rm -it \
  -v $(pwd):/src -w /src \
  -e PLUGIN_PROJECT=abc \
  -v /Users/abc/depcheck-data:/usr/share/dependency-check/data \
  chrisduong/drone-dep-check
```

**Debug:**

```sh
docker run --rm -it \
  -v $(pwd):/src -w /src \
  --entrypoint=/bin/bash \
  chrisduong/drone-dep-check
```

## Resources

[Command Line Arguments](https://jeremylong.github.io/DependencyCheck/dependency-check-cli/arguments.html)