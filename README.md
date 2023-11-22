#### Build
```
docker build -t llm .
```

#### Run 
```
docker run -it --rm -p 8000:8000 llm
```

#### Run with GPU
```
docker run -it --rm -p 8000:8000 --gpus=all llm
```