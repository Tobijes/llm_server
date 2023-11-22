# /bin/bash
ollama serve &
sleep 1
ollama run mistral "/bye"
litellm --model ollama/mistral --api_base http://localhost:11434 --temperature 0.3 --max_tokens 2048