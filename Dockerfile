FROM python:3
# Or any preferred Python version.
ADD main.py .
CMD [ "python", "./main.py" ]
