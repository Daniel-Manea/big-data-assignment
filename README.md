# Big Data Assignment Dockerized Environment

This repository contains a Docker Compose setup for running a Jupyter Notebook environment and an API endpoint using Docker. The containers can be easily started using `docker-compose`. Additionally, we'll explain how to start the API endpoint using `uvicorn`.

## Requirements

Before you begin, make sure you have the following installed on your system:

- [Docker](https://www.docker.com/get-started)
- [Docker Compose](https://docs.docker.com/compose/install/)

## Getting Started

1. Clone the [Big Data Assignment repository](https://github.com/Daniel-Manea/big-data-assignment) to your local machine:

   ```bash
   git clone https://github.com/Daniel-Manea/big-data-assignment.git
   cd big-data-assignment
   ```

2. Inside the cloned repository, there's already a `docker-compose.yml` file and a `Dockerfile` provided for the Jupyter Notebook environment and the API endpoint.

3. Run the following command to start the containers:

   ```bash
   docker-compose up -d
   ```
   
This command will build and start the Docker containers as specified in the `docker-compose.yml` file.

## Accessing Jupyter Notebook

The Jupyter Notebook environment should be accessible at `http://localhost:8888`.

You can also access the Jupyter Notebook by connecting to the running container using Visual Studio Code's "Remote - Containers" extension. Follow these steps:

1. Open Visual Studio Code.

2. Install the "Remote - Containers" extension if you haven't already.

3. Click on the green icon in the bottom-left corner that says "Open a Remote Window."

4. Select "Remote-Containers: Attach to Running Container..."

5. Choose the running container named "notebook" (as specified in `docker-compose.yml`).

This will open a Visual Studio Code window inside the running container, allowing you to work with the Jupyter Notebook environment directly from Visual Studio Code.

## Starting the API Endpoint

To start the API endpoint using `uvicorn`, follow these steps:

1. Open a terminal and navigate to the `big-data-assignment` directory where you cloned the repository.

2. Run the following command to start the API endpoint:

   ```bash
   uvicorn api.main:app --reload
   ```

   This command will start the API using `uvicorn`. The `--reload` option enables auto-reloading, which means the server will automatically restart whenever you make changes to the code.

3. Once the API is running, you should see output indicating the server has started. By default, the API will be available at `http://localhost:8000`.

You can now interact with the API by sending HTTP requests to the specified endpoints.
