# README

Code used to test/measure/profile the effect of branchless optimizations with conversion of DNS header bit conversion

## Context

In DNS land, all communication is done through a bytes in a specific wire format originally defined in [RFC1035#4.1](https://datatracker.ietf.org/doc/html/rfc1035.html#section-4.1). Every DNS Message includes a "header" that specify the remaining sections of the message for parsing, in addition to including query information like response codes, query parameters, etc.

The current best practice ([RFC6895#2](https://datatracker.ietf.org/doc/html/rfc6895.html#section-2))defines the wire-encoded format like this: 

```rfc
                               1  1  1  1  1  1
 0  1  2  3  4  5  6  7  8  9  0  1  2  3  4  5
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|                      ID                       |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|QR|   Opcode  |AA|TC|RD|RA| Z|AD|CD|   RCODE   |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|                    QDCOUNT                    |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|                    ANCOUNT                    |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|                    NSCOUNT                    |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
|                    ARCOUNT                    |
+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+--+
```

Even though the wire format exists, most of the DNS libraries I've seen include a logical representation of a "message" - i.e a struct or class. 

Code that interacts with logical representations (i.e struct) need to convert to the wire format (i.e bytes) when actually sending the data over the socket. In the RFC we have logical bools that represent a message. The `QR` (query), `AA` (authoritative answer), `TC` (trucation), `AD` (authentic data), `RD` (recursion desired), and `CD` (checking desired) are all booleans/1 bit. 

This means when we convert the logical code to the wire format, we often employ an `if` statement that leads to several simple branches like this:

```rust
let mut header_flags = 0u16;
if header.authoritative {
	header_flags |= 0b0000_0100_0000_0000;
}
if header.recursion_desired {
	header_flags |= 0b0000_0001_0000_0000;
}
```

This is a branch - and where there is a branch, there's room for a branchless optimization (sometimes...). This is to explore if/how the code can be faster on x86-64 with branchless conversion.

### Microbenchmarking through the rust framework
```
cargo bench
```

### Microbenchmark through a binary (to use with other frameworks)
```
cargo build --release
perf stat ./target/release/random_bench branchless 1000000
perf stat ./target/release/random_bench branchless 1000000
perf stat ./target/release/random_bench branchless 1000000
```

### Generating assembly (requires `cargo asm` installation)
```
cargo asm header_util::header_conversion::convert_to_wire_format_branched_1
cargo asm header_util::header_conversion::convert_to_wire_format_branched_2
cargo asm header_util::header_conversion::convert_to_wire_format_branchless
```

### Appendinx - factoring in target CPU

Don't forget to set the flag RUSTFLAGS to target your platform cpu `RUSTFLAGS='-C target-cpu=native'`