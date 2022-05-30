package main

import (
	"log"
	"net"
	_ "net/http/pprof"

	"golang.org/x/net/context"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"

	"github.com/daiminglong/grpc_performance_test/src/public"
)

const (
	port = ":40021"
)

// server is used to implement helloworld.GreeterServer.
type server struct{}

// SayHello implements helloworld.GreeterServer
func (s *server) SayHello(ctx context.Context, in *public.HelloRequest) (*public.HelloReply, error) {
	// fmt.Println("######### get client request name :"+in.Name)
	return &public.HelloReply{Message: "main: Hello " + in.Name}, nil
}

func main() {
	lis, err := net.Listen("tcp", port)
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}

	s := grpc.NewServer(
		grpc.MaxConcurrentStreams(1024),
		grpc.WriteBufferSize(64*1024),
	)
	public.RegisterGreeterServer(s, &server{})
	// Register reflection service on gRPC server.
	reflection.Register(s)
	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
