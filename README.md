# Usage 

## compiler
```
$ make all
```

## start server
```
./bin/server
```

## start client
```
./bin/client  -h
Usage of ./client:
  -addr string
        input server addr (default "127.0.0.1:50051")
  -c int
        grpc-client connnect num (default 10)
  -g int
        goroutine nums (default 10)
  -n int
        total requests (default 200000)

./bin/client -addr=172.31.12.12:50051 -c=50 -n=1000000 -g=200
```