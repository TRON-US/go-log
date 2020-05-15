# go-log

> The logging library used by go-btfs

It currently uses a modified version of [zap](https://github.com/TRON-US/zap) to implement the standard printf-style log output.

## Install

```sh
go get github.com/TRON-US/btfs/go-log
```
## Usage

Once the package is imported under the name `logging`, an instance of `EventLogger` can be created like so:

```go
var log = logging.Logger("subsystem name")
```

It can then be used to emit log messages, either plain printf-style messages at six standard levels or structured messages using `Start`, `StartFromParentState`, `Finish` and `FinishWithErr` methods.

## Example

```go
func (s *Session) GetBlock(ctx context.Context, c *cid.Cid) (blk blocks.Block, err error) {

    // Starts Span called "Session.GetBlock", associates with `ctx`
    ctx = log.Start(ctx, "Session.GetBlock")

    // defer so `blk` and `err` can be evaluated after call
    defer func() {
        // tag span associated with `ctx`
        log.SetTags(ctx, map[string]interface{}{
            "cid": c,
            "block", blk,
        })
        // if err is non-nil tag the span with an error
        log.FinishWithErr(ctx, err)
    }()

    if shouldStartSomething() {
        // log message on span associated with `ctx`
        log.LogKV(ctx, "startSomething", true)
    }
  ...
}
```
## Contribute

PRs are welcome!

## License

MIT @ TRON-US
