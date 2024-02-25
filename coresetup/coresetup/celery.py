# django_celery/celery.py

import os
import celery
from coresetup import settings

print (celery.__file__)
# from celery import Celery

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "coresetup.settings")
app = celery.Celery("coresetup")
app.config_from_object("django.conf:settings", namespace="CELERY")
app.autodiscover_tasks()

app.conf.update(
    BROKER_URL=settings.CELERY_BROKER_URL,
)



@app.task(bind=True)
def debug_task(self):
    print('Request: {0!r}'.format(self.request))

# https://realpython.com/asynchronous-tasks-with-django-and-celery/#how-can-you-leverage-celery-for-your-django-app
# https://medium.com/@aravindsatvik/introduction-to-celery-a-distributed-task-queue-fcfe47a43c73
# https://cronitor.io/guides/monitoring-celery