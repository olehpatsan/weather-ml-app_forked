FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /weather-ml-app

# Install dependencies
COPY requirements.txt /weather-ml-app/
RUN pip install -r /weather-ml-app/requirements.txt

# Copy the rest of the application code
COPY . /weather-ml-app

# Expose the port
EXPOSE 5000

# Run the app
CMD ["python" , "app.py"]
