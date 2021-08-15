FROM fluent/fluentd:v1.13-1
USER root
RUN gem install fluent-plugin-prometheus
USER fluent
CMD ["fluentd", "-c", "/fluentd/etc/fluentd.conf"]
