FROM docker.elastic.co/elasticsearch/elasticsearch:8.15.0
ENV ES_PLUGINS_PATH /usr/share/elasticsearch/plugins
ADD elasticsearch-analysis-ik-8.15.0.zip ./elasticsearch-analysis-pinyin-8.15.0.zip ./analysis-icu-8.15.0.zip $ES_PLUGINS_PATH/
RUN cd $ES_PLUGINS_PATH && \
unzip elasticsearch-analysis-ik-8.15.0.zip -d analysis-ik/ && \
unzip elasticsearch-analysis-pinyin-8.15.0.zip -d analysis-pinyin/ && \
unzip analysis-icu-8.15.0.zip -d analysis-icu/ && \
rm elasticsearch-analysis-ik-8.15.0.zip elasticsearch-analysis-pinyin-8.15.0.zip analysis-icu-8.15.0.zip

