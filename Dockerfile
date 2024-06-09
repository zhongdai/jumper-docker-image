FROM alpine:latest

# Set environment variables
ENV KUBECTL_VERSION=v1.21.0

# Install necessary tools
RUN apk update && \
    apk add --no-cache \
    bash \
    zsh \
    curl \
    nmap \
    wget \
    git \
    neovim \
    && \
    # Install kubectl
    curl -LO "https://dl.k8s.io/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/ && \
    # Clean up
    rm -rf /var/cache/apk/*

# Copy the local .zshrc file into the Docker image
COPY .zshrc /root/.zshrc

# Set bash as the default shell
CMD ["/bin/bash"]
