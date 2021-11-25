package main

import (
	"context"
	pb "micro-server/proto"
	"time"

	"github.com/asim/go-micro/plugins/client/grpc/v4"
	"go-micro.dev/v4"
	log "go-micro.dev/v4/logger"
)

var (
	service = "micro-server"
	version = "latest"
)

func main() {
	// Create service
	srv := micro.NewService(
		micro.Name(service),
		micro.Client(grpc.NewClient()),
		micro.Version(version))
	srv.Init()

	// Create client
	c := pb.NewTransactionPersistenceService(service, srv.Client())

	for {
		// Call service
		rsp, err := c.Call(context.Background(), &pb.CallRequest{Name: "John"})
		if err != nil {
			log.Fatal(err)
		}

		log.Info(rsp)

		time.Sleep(1 * time.Second)
	}
}
