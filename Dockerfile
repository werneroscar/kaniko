FROM ghcr.io/actions/actions-runner:latest

USER root

COPY ./out/executor /kaniko/executor

RUN chmod +x /kaniko/executor

ENV PATH="/kaniko:${PATH}"

USER runner
