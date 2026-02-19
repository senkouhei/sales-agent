# Extend the official n8n image
FROM docker.io/n8nio/n8n:latest

# Install @anthropic-ai/claude-code globally (n8n image runs as node, so use root for install)
USER root
RUN npm install -g @anthropic-ai/claude-code
USER node

# Keep the default n8n entrypoint/CMD from the base image