FROM ghcr.io/actions/actions-runner:latest

USER root

# Install Kaniko
RUN cp out/executor /kaniko/executor && \
    chmod +x /kaniko/executor

# Add kaniko to PATH
ENV PATH="/kaniko:${PATH}"

USER runner