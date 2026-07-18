FROM openjdk:8-alpine
ARG JAR_FILE="*.jar"
ENV LANG="C.UTF-8" \
    LC_ALL="C.UTF-8" \
    TZ="Asia/Shanghai" \
    JAR="app.jar" \
    JAVA_OPTS=""
RUN \
  sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories && \
  apk update && apk upgrade && \
  apk add --no-cache tzdata && \
  cp /usr/share/zoneinfo/$TZ /etc/localtime && \
  echo $TZ > /etc/timezone && \
  ln -s /lib /lib64 && \
  apk add --no-cache busybox-extras iproute2 curl net-tools font-adobe-100dpi ttf-dejavu fontconfig bash tini libc6-compat linux-pam krb5 krb5-libs && \
  rm -rf /var/cache/apk/*
WORKDIR /home
COPY ${JAR_FILE} ${JAR}
CMD java -Dfile.encoding=UTF-8 ${JAVA_OPTS} -jar ${JAR}