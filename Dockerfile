FROM mdpnexus.ad.moodys.net:9300/moodys-java-jdk8:1.8
RUN curl -ksSL https://zipkin.io/quickstart.sh | bash -s
RUN pwd
RUN ls -lart
EXPOSE 9411
USER 1001
CMD java -jar zipkin.jar
