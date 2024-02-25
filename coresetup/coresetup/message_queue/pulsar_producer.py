import logging

from pulsar import Client
logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)

class PulsarProducer:
    def __init__(self, service_url, topic):
        self.client = Client(service_url)
        self.producer = self.client.create_producer(topic)

    def send_message(self, message):
        logger.info('Received log message: %s', message)
        self.producer.send_async(message.encode('utf-8'),None)
        self.producer.flush()

