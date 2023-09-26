# Use an official Python runtime as a parent image
FROM python:latest

# Set environment variables
ENV PYTHONUNBUFFERED=1

# Create a working directory
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Copy the install_vscode_extensions.sh file into the container
COPY install_vscode_extensions.sh .

# Make the script executable
RUN chmod +x ./install_vscode_extensions.sh

# Install the requirements
RUN pip install -r requirements.txt

# Expose the Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook when the container runs
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "./install_vscode_extensions.sh"]

