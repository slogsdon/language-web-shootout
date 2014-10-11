# Language Shoot-Out on the Web

No frills look at how these languages compare when targetting the web. We're
looking at things as close to the language as possible to reduce any outside
influences that may affect results. HTTP abilities available in the language's
core or standard library are preffered over external libraries and toolkits.

Currently, there is only one endpoint being tested in each language, a simple 
"Hello World!" message.

## Languages

- Elixir
    - Elixir 1.0.0
    - Erlang 17.3
    - Cowboy (1.0.0) via Plug (0.6.0)
- Erlang
    - Erlang 17.3
    - Cowboy (1.0.0)
- Clojure
    - JRE 1.8.0_20-b26
    - Clojure 1.6.0
    - Jetty (7.6.8)
    - http-kit (2.1.16)
    - Compojure (1.1.9)
- Racket
    - Racket 6.0
    - Spin (1.3)
- Haskell
    - GHC 7.8.3
    - WAI (3.0.2.3)
    - Scotty (0.9.0)
- Rust
    - Rust 0.12.0-nightly (136ab3c6b 2014-10-04 00:17:04 +0000)
    - rust-http (master)
- Go
    - Go 1.3.1
- PHP
    - PHP 5.6.1
- Ruby
    - Ruby 2.0.0p481 (2014-05-08 revision 45883) [universal.x86_64-darwin13]

## Criteria

- Develop
- Build
- Execution
- Social Cloud
- Environment
- Take path of least resistance with simplicity in mind

## TODO

- Normalize response bodies

## Test platform

- MacBookPro8,1 (Late 2011)
- 2.4GHz Intel Core i5 (2415M)
- 2x8GB 1333MHz DDR3

## Results

### Go

```
$ wrk -c32 -t32 -d60 http://localhost:3000/
Running 1m test @ http://localhost:3000/
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.12ms  622.61us   4.51ms   60.41%
    Req/Sec     0.95k   146.14     1.33k    58.11%
  1723181 requests in 1.00m, 211.99MB read
Requests/sec:  28722.11
Transfer/sec:      3.53MB
```

### Haskell

```
$ wrk -c32 -t32 -d60 http://localhost:3000/
Running 1m test @ http://localhost:3000/
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.13ms  119.06us   4.43ms   76.08%
    Req/Sec     0.93k    93.98     1.22k    72.21%
  1673806 requests in 1.00m, 271.37MB read
Requests/sec:  27898.61
Transfer/sec:      4.52MB
```

### Clojure (Jetty)

```
$ wrk -c32 -t32 -d60 http://localhost:3000/
Running 1m test @ http://localhost:3000/
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    81.97ms  155.28ms 517.01ms   82.76%
    Req/Sec   120.15     87.09   833.00     62.64%
  227778 requests in 1.00m, 34.54MB read
Requests/sec:   3796.31
Transfer/sec:    589.47KB
```

### Clojure (http-kit)

```
$ wrk -c32 -t32 -d60 http://localhost:3000/
Running 1m test @ http://localhost:3000/
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.71ms   10.36ms 311.30ms   99.59%
    Req/Sec     0.90k   234.79     1.81k    73.35%
  1666670 requests in 1.00m, 233.65MB read
Requests/sec:  27779.93
Transfer/sec:      3.89MB
```

### Elixir

```
$ wrk -c32 -t32 -d60 http://localhost:3000/
Running 1m test @ http://localhost:3000/
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.62ms   18.78ms 197.12ms   98.91%
    Req/Sec   611.73    156.84     1.90k    66.78%
  1113773 requests in 1.00m, 191.14MB read
Requests/sec:  18564.53
Transfer/sec:      3.19MB
```

### Erlang

```
$ wrk -c32 -t32 -d60 http://localhost:3000/
Running 1m test @ http://localhost:3000/
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.24ms   37.89ms 319.13ms   98.54%
    Req/Sec   719.43    256.70     3.44k    72.15%
  1309720 requests in 1.00m, 191.04MB read
Requests/sec:  21830.29
Transfer/sec:      3.18MB
```

### Racket

```
$ wrk -c32 -t32 -d60 http://localhost:3000
Running 1m test @ http://localhost:3000
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    24.17ms   32.40ms 278.23ms   97.78%
    Req/Sec    51.61     19.55   194.00     73.02%
  99235 requests in 1.00m, 17.98MB read
  Socket errors: connect 0, read 2, write 0, timeout 0
Requests/sec:   1653.67
Transfer/sec:    306.83KB
```

### Rust

```
$ wrk -c32 -t32 -d60 http://localhost:3000/
Running 1m test @ http://localhost:3000/
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     6.34ms  441.09us  17.97ms   85.47%
    Req/Sec   164.81     30.21   272.00     87.41%
  302958 requests in 1.00m, 41.60MB read
Requests/sec:   5049.56
Transfer/sec:    710.10KB
```

### PHP

```
$ wrk -c32 -t32 -d60 http://localhost:3000
Running 1m test @ http://localhost:3000/
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   151.30ms  290.00ms 709.42ms   78.74%
    Req/Sec    16.05    237.56     4.89k    99.52%
  32344 requests in 1.00m, 4.90MB read
  Socket errors: connect 0, read 32343, write 0, timeout 850
Requests/sec:    538.88
Transfer/sec:     83.67KB
```

### Ruby

```
$ wrk -c32 -t32 -d60 http://localhost:3000/
Running 1m test @ http://localhost:3000/
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    51.13ms   16.88ms 153.43ms   70.38%
    Req/Sec    19.81      5.10    40.00     69.07%
  38798 requests in 1.00m, 5.96MB read
Requests/sec:    646.51
Transfer/sec:    101.65KB
```