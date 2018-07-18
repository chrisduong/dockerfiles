# Drone plugin for Dependency Check

## run.sh

We need to capture the PID of the process so we can graceful shutdown this container. SEE: [Container does not catch signals and exit Ctrl-C](https://github.com/docker-library/mysql/issues/47#issuecomment-147397851)
