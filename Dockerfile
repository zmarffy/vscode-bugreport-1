FROM python:3.11

COPY requirements.txt .
RUN pip install -r requirements.txt && rm requirements.txt

COPY app.py .
CMD ["uvicorn", "app:app"]
