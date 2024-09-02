# Use a Node.js image to build the Svelte project
FROM node:18-alpine as builder

# Set the working directory in the container
WORKDIR /app

# Copy the Svelte project files to the container
COPY frontend/ .

# Install dependencies and build the Svelte project
RUN npm install

RUN npm run build

RUN ls /app/dist

# Use a Python image for the FastAPI application
FROM python:3.12

# Set the working directory in the container
WORKDIR /app

# Copy the built Svelte files from the builder stage
COPY --from=builder /app/dist ./frontend/dist

RUN ls ./frontend/dist

# Copy the FastAPI app files to the container
COPY app/ .

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN ls frontend/

EXPOSE 8000

ENTRYPOINT ["fastapi", "run", "--host", "0.0.0.0", "/app/main.py"]
