FROM python:3.11
WORKDIR /app
COPY requirements.txt ./
RUN python -m venv venv
RUN . venv/bin/activate && pip install -r requirements.txt
EXPOSE 8000
CMD ["venv/bin/python", "manage.py", "runserver", "0.0.0.0:8000"]