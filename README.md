# go-log

> The logging library used by go-btfs

go-log wraps [zap](https://github.com/uber-go/zap) to provide a logging facade. go-log manages logging
instances and allows for their levels to be controlled individually.


## Install

```sh
go get github.com/TRON-US/go-log
```

## Usage

Once the package is imported under the name `logging`, an instance of `EventLogger` can be created like so:

```go
var log = logging.Logger("subsystem name")
```

It can then be used to emit log messages in plain printf-style messages at seven standard levels:

Levels may be set for all loggers:

```go
lvl, err := logging.LevelFromString("error")
  if err != nil {
    panic(err)
  }
logging.SetAllLoggers(lvl)
```

or individually:

```go
lvl, err := logging.LevelFromString("error")
  if err != nil {
    panic(err)
  }
logging.SetLogLevel("foo", "info")
```

## Contribute

PRs are welcome!


## License

MIT @ TRON-US
