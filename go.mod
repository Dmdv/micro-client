module micro-client

go 1.16

replace micro-server => gitlab.com/centralex-custodefi/micro-server v1.0.0

require (
	github.com/ProtonMail/go-crypto v0.0.0-20211221144345-a4f6767435ab // indirect
	github.com/asim/go-micro/plugins/client/grpc/v4 v4.0.0-20220103112129-696a0ba71412
	github.com/asim/go-micro/plugins/registry/kubernetes/v4 v4.0.0-20220103112129-696a0ba71412
	github.com/miekg/dns v1.1.45 // indirect
	go-micro.dev/v4 v4.5.0
	golang.org/x/crypto v0.0.0-20211215153901-e495a2d5b3d3 // indirect
	golang.org/x/net v0.0.0-20220105145211-5b0dc2dfae98 // indirect
	golang.org/x/sys v0.0.0-20211216021012-1d35b9e2eb4e // indirect
	golang.org/x/tools v0.1.8 // indirect
	google.golang.org/genproto v0.0.0-20211223182754-3ac035c7e7cb // indirect
	google.golang.org/grpc v1.43.0 // indirect
	micro-server v0.0.0-00010101000000-000000000000
)
