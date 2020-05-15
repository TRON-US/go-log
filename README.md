# go-log

[![](https://img.shields.io/badge/made%20by-Protocol%20Labs-blue.svg?style=flat-square)](http://ipn.io)
[![](https://img.shields.io/badge/project-BTFS-blue.svg?style=flat-square)](http://btfs.io/)
[![](https://img.shields.io/badge/freenode-%23btfs-blue.svg?style=flat-square)](http://webchat.freenode.net/?channels=%23btfs)
[![standard-readme compliant](https://img.shields.io/badge/standard--readme-OK-green.svg?style=flat-square)](https://github.com/RichardLitt/standard-readme)
[![GoDoc](https://godoc.org/github.com/TRON-US/go-log?status.svg)](https://godoc.org/github.com/TRON-US/go-log)
[![Build Status](https://travis-ci.org/TRON-US/go-log.svg?branch=master)](https://travis-ci.org/TRON-US/go-log)

<!---[![Coverage Status](https://coveralls.io/repos/github/TRON-US/go-log/badge.svg?branch=master)](https://coveralls.io/github/TRON-US/go-log?branch=master)--->


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
