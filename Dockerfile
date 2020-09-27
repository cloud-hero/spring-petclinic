FROM maven

COPY . /usr/local/src/spring-petclinic
RUN cd /usr/local/src/spring-petclinic && \
    mvn package

ENTRYPOINT ["java","-jar"]
CMD ["/usr/local/src/spring-petclinic/target/spring-petclinic-2.3.0.BUILD-SNAPSHOT.jar"]