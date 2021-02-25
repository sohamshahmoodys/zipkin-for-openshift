FROM registry.access.redhat.com/ubi8
RUN curl -sSL https://zipkin.io/quickstart.sh | bash -s
RUN pwd
RUN ls -lart
EXPOSE 9411
USER 1001
CMD java -jar zipkin.jar
