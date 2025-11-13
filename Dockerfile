# Use the official n8n image from Docker Hub
FROM n8nio/n8n:latest

# Set default environment variables
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=admin123
ENV N8N_PORT=5678
ENV N8N_PROTOCOL=https
ENV WEBHOOK_URL=${RENDER_EXTERNAL_URL}

# Expose the port Render expects
EXPOSE 10000

# Start n8n
CMD ["n8n", "start"]
