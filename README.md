# Pretty

A personal tool that pretty prints valid JSON. 
Not intended for production use, but in case anyone else wants it, here ya go.

## Building: 
Obviously, you can use SPM or swiftc to mess with it.

The build args I use are in build.sh.

## Usage: 
Just pipe whatever to pretty:

```
curl http://localhost:8080/api/users | pretty
```

Could also run it and just feed it some data through standard input.

Swift readline handles input from files or streams just fine, though 
it runs a little slower if targetting Windows (still faster than the convenient alternatives).

## But why?

This only exists because I was frustrated by the slower, crappy options that are already 
included with macOS devtools, and I knew I could write it myself in < 5 minutes.

In my initial testing, piping to pretty is 72% faster and 60% more power efficient than
piping to the stock `python3 -m json.tool`.  The compiled executable is also under 100kb.

This is still not good, but it was good enough for me.

Fun fact: Linux target is 5 times faster than the macOS 
target (doesn't have to go through objC for the syscalls).  
If targetting Linux I recommend passing -static-stdlib.

Additional functionality is up to the user, but computers are amazing, so go nuts.
