FROM  owasp/dependency-check

LABEL version="1.0"

ENV PLUGIN_SCAN="."
ENV PLUGIN_FORMAT="HTML"
ENV PLUGIN_PROJECT="abc"
ENV PLUGIN_REPORT="."
ENV PLUGIN_DATA_DIRECTORY="/usr/share/dependency-check/data"

ADD run.sh /run.sh
ADD drone-depend-check.sh /bin

ENTRYPOINT ["/bin/bash", "/run.sh"]

# For Drone to work, we need root user to be able to write reports
USER root

CMD ["/bin/drone-depend-check.sh"]
