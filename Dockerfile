from marounbassam/ubuntu-java9

RUN export JAVA_HOME=/usr/lib/jvm/java-9-oracle
RUN export PATH=$PATH:/usr/lib/jvm/java-9-oracle/bin
ADD . /opt
WORKDIR /opt
RUN export JAVA_HOME=/usr/lib/jvm/java-9-oracle; \
 PATH=$PATH:/usr/lib/jvm/java-9-oracle/bin; \
 ./compile.sh; ./package.sh; ./linking.sh; ./run-linked.sh

RUN du -sh ./pl.tfij.java9modules.app-image
RUN ls -lR ./pl.tfij.java9modules.app-image
