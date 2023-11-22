# Ollama image, ubuntu with nvidia drivers
FROM ollama/ollama

# Set working directory
WORKDIR /app

# Copy script for running Ollama and pull model
COPY pull.sh .
RUN ./pull.sh

# Install Python and Pip for LiteLLM
RUN apt-get -y update;
RUN apt-get install -y python3-pip
RUN pip install litellm
# Run liteLLM for 10s to make sure it as gotten online dependencies
RUN timeout --preserve-status 10s litellm 

# Run start script for using both Ollama and LiteLLM
COPY start.sh .
ENTRYPOINT [ "/bin/sh" ]
CMD [ "start.sh" ]