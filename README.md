# Pretty

A personal tool that pretty prints valid JSON. Not intended for production use.

## Building: 
You can use SPM or swiftc to mess with...

The exe in the repo was built with build.sh.

## Usage: 
Just pipe whatever to pretty:

```
curl http://localhost:8080/api/users | pretty
```

Swift can handle input from files or streams.
Could also run it and just feed it some data through standard input.

This only exists because I was frustrated by the slower tools that are already 
included with macOS devtools, and I knew I could write it myself in < 5 minutes.

In my initial testing, piping to pretty is 72% faster and 60% more power efficient than
piping to the stock python3 -m json.tool.

Additional functionality is up to the user, but obviously computers are amazing, so go nuts.