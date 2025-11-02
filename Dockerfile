FROM python:3.7.1

WORKDIR /app

# Copy requirements first for better caching
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire app
COPY . /app

# Set environment variable for port
ENV PORT=7126

# Expose the port
EXPOSE $PORT

CMD ["python", "-m", "app.main"]