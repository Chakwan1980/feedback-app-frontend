docker build \
    -t feedback-app-frontend:v3 \
    -t feedback-app-frontend:latest \
    -t rosaflores/feedback-app-frontend:v3 \
    -t rosaflores/feedback-app-frontend:latest .


# push the images to docker hub
docker push rosaflores/feedback-app-frontend:v3
docker push rosaflores/feedback-app-frontend:latest 

# Start the app with Docker Compose
docker-compose up --build