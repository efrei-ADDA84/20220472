FROM python:3.9-alpine
WORKDIR /app
COPY TP01DEVOPS.py /app/
RUN pip install --no-cache-dir requests==2.26.0
CMD ["python", "-c", "from TP01DEVOPS import get_weather; import os; print(get_weather(float(os.environ['LAT']), float(os.environ['LONG']), os.environ['API_KEY']))"]
