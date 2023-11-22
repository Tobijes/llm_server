# /bin/bash
ollama serve &
sleep 2
ollama pull mistral:latest
