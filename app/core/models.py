from django.db import models


class Post(models.Model):
    """A Model for posts"""
    name = models.CharField(max_length=50)
    image_text = models.CharField(max_length=50)
    explanation = models.TextField()
    timestamp = models.DateTimeField(auto_now_add=True)
    updated = models.DateTimeField(auto_now=True)

    def __str__(self):
        return str(self.name)
