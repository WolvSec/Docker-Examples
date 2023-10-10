# Inherit from the Python Docker image
FROM python:latest
# Install the Flask package via pip
RUN pip install flask Jinja2

# Copy the source code to app folder
COPY ./app.py /app/

# Change the working directory
WORKDIR /app/

# Set "python" as the entry point
ENTRYPOINT ["python3"]

# Set the command as the script name
CMD ["app.py"]
