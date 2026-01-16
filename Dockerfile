FROM ghcr.io/ggerganov/llama.cpp:full

# katalog na modele
RUN mkdir -p /models

# kopiujemy model GGUF do obrazu
COPY mistral-7b.gguf /models/mistral-7b.gguf

# start serwera LLM
CMD ["./main", "--server", "-m", "/models/mistral-7b.gguf", "-c", "4096", "--port", "8080"]
