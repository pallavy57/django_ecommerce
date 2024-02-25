

import ast
import time
import uuid
from django.db import connection
from django.http import JsonResponse
import pulsar
from pulsar import Client
import random
import string
from coresetup.message_queue.pulsar_producer import PulsarProducer
import logging
logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)

class PulsarConsumer:
    client = Client('pulsar://192.168.225.205:6650',message_listener_threads=10)
    consumer = client.subscribe(
            'trackCartItems-01', 'recommendationsPerUser',consumer_type=pulsar.ConsumerType.Shared) 


    # def returnClient(self):
    #     return self.client

    # def set_message_id(self, id):
    #     self.message_id = id

    # def get_message_id(self):
    #     return self.message_id

    # def getConnecttiopn(self):

    #     print("gtdgtdhgdhgdhdh", self.subscription_name)
    #     if (self.subscription_name != 'recommendationsPerUser'):
    #         return self.client.subscribe(
    #             self.topic, self.subscription_name)
    #     else:
    #         self.start_consuming()

    def generate_custom_id(self):
        timestamp = str(int(time.time()))
        random_chars = ''.join(random.choices(
            string.ascii_uppercase + string.digits, k=6))
        return f"ID-{timestamp}-{random_chars}"

    def start_consuming(self):
        while True:
            msg = self.consumer.receive()
            logger.info('Received log message: %s', msg)
            message = ast.literal_eval(msg.data().decode('utf-8'))
            # print(message)
            try:

                for i in range(len(message)):
                    data = []
                    data.append(message[i]["id"])
                    data.append(self.generate_custom_id())
                    data.append(int(message[i]["quantity"]))
                    data.append(int(message[i]["userId"]))
                    data.append(message[i]["price"])
                    print(data)
                    raw_query_2 = '''INSERT INTO orders.order_products_mapping (added_product_id, cart_id, qty,user_id,price)
                    SELECT DISTINCT ON (added_product_id, user_id)
                    i.added_product_id, i.cart_id, i.qty,i.user_id,i.price
                    FROM(VALUES(%s,%s,%s,%s,%s))i (added_product_id, cart_id, qty,user_id,price)
                    LEFT JOIN orders.order_products_mapping r1 USING (added_product_id, user_id)
                    WHERE  r1.added_product_id IS NULL and r1. user_id IS NULL
                        '''
                    cursor2 = connection.cursor()
                    cursor2.execute(
                        raw_query_2, (data[0], data[1], data[2], data[3], data[4]))

                self.consumer.acknowledge(msg)
                # self.client.close()
                return JsonResponse({"message": "Message Stored Successfully"})

            except Exception as e:
                self.consumer.negative_acknowledge(msg)
                print('Failed to process message:', e)
                return e
    # def close(self):
    #     self.client.close()
