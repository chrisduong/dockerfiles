FROM  owasp/dependency-check

LABEL version="1.0"

ENV PLUGIN_SCAN="."
ENV PLUGIN_FORMAT="HTML"
ENV PLUGIN_PROJECT=""
ENV PLUGIN_REPORT="/tmp"

ADD run.sh /run.sh
ADD drone-depend-check.sh /bin

ENTRYPOINT ["/bin/bash", "/run.sh"]
CMD ["/bin/drone-depend-check.sh"]
