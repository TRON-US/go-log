module github.com/ipfs/go-log

require (
	github.com/TRON-US/go-btfs-collect-client v0.0.2
	github.com/gogo/protobuf v1.3.1
	github.com/ipfs/go-ipfs-util v0.0.1
	github.com/ipfs/go-log/v2 v2.0.5
	github.com/opentracing/opentracing-go v1.1.0
	go.uber.org/zap v1.14.1
)

go 1.12

replace github.com/ipfs/go-log/v2 => github.com/TRON-US/go-log/v2 v2.5.1

replace go.uber.org/zap => github.com/TRON-US/zap v1.50.1
