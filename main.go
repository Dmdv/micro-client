package main

import (
	"context"
	pb "micro-server/proto"
	"time"

	"go-micro.dev/v4"
	log "go-micro.dev/v4/logger"
)

var (
	service = "micro-server"
)

func main() {
	// Create service
	// micro.Client(grpc.NewClient()), // must come before any other options
	// micro.Name(service), - is defined in config map
	// micro.Version(version), - is defined in config map

	srv := micro.NewService(
	//micro.Client(grpc.NewClient()), // Should be working as env var: `MICRO_CLIENT: grpc` but doesn't work
	//micro.Name(service),
	)
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
