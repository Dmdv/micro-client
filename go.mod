module micro-client

go 1.16

replace micro-server => gitlab.com/centralex-custodefi/micro-server v1.0.0

require (
	github.com/asim/go-micro/plugins/client/grpc/v4 v4.0.0-20211207093048-a40f6e8fae19
	github.com/asim/go-micro/plugins/registry/kubernetes/v4 v4.0.0-20211207093048-a40f6e8fae19
	go-micro.dev/v4 v4.4.0
	micro-server v0.0.0-00010101000000-000000000000
)
