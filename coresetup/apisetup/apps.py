from django.apps import AppConfig
from apscheduler.schedulers.background import BackgroundScheduler, BlockingScheduler
from django.views.decorators.csrf import csrf_exempt
import logging

logging.basicConfig()
logging.getLogger('apscheduler').setLevel(logging.DEBUG)


class ApisetupConfig(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'apisetup'

    def ready(self):
        from apisetup.tasks import Recommendation
        job_defaults = {
            'coalesce': False,
            'max_instances': 3
        }
        scheduler = BackgroundScheduler(job_defaults=job_defaults)
        scheduler.add_job(func=Recommendation(
        ).product_recommendation_cron, trigger='interval', seconds=60, id="my_job")
        print(scheduler.print_jobs())
        if (scheduler.running == False):
            scheduler.start()
        else:
            scheduler.shutdown()
