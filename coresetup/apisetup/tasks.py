from time import sleep
from celery import shared_task
from coresetup.celery import app
from coresetup.message_queue.pulsar_producer import PulsarProducer
from coresetup.message_queue.pulsar_consumer import PulsarConsumer


# @app.task



class Recommendation:
    def product_recommendation_cron(self):
            conn = PulsarConsumer()
            conn.start_consuming()

    def sendRecommendations(self):
         pass        


@app.task
def send_feedback_email_task(email_address, message):
    from django.core.mail import send_mail
    """Sends an email when user register"""

    send_mail(
        "Your Feedback",
        f"\t{message}\n\nThank you!",
        "support@example.com",
        [email_address],
        fail_silently=False,
    )
