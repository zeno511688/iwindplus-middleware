FROM rabbitmq:3.10.5-management-alpine
ADD rabbitmq_delayed_message_exchange-3.10.2.ez /plugins/
RUN rabbitmq-plugins enable --offline rabbitmq_delayed_message_exchange \
    && rabbitmq-plugins enable --offline rabbitmq_stomp \
    && rabbitmq-plugins enable --offline rabbitmq_management \
    && rabbitmq-plugins enable --offline rabbitmq_prometheus