# Language Shoot-Out on the Web

No frills look at how these languages compare when targetting the web. We're
looking at things as close to the language as possible to reduce any outside
influences that may affect results. HTTP abilities available in the language's
core or standard library are preffered over external libraries and toolkits.

Currently, there is only one endpoint being tested in each language, a simple 
"Hello World!" message.

## Languages

- Elixir
    - Elixir 0.15.2-dev
    - Erlang 17
    - Cowboy (1.0.0) via Plug (0.6.0)
- Erlang
    - Erlang 17
    - Cowboy (1.0.0)
- Clojure
    - JRE 1.6.0_65
    - Clojure 1.6.0
    - Jetty (7.6.8)
    - Compojure (1.1.8)
- Racket
    - Racket 6.0
    - Spin (1.3)
- Haskell
    - GHC 7.6.3
    - WAI (3.0.1.1)
    - Scotty (0.8.2)
- Rust
- Go
    - Go 1.3.1
- PHP
    - PHP 5.6.0RC2

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
$ wrk -c32 -t32 -d60 http://localhost:3000
Running 1m test @ http://localhost:3000
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.18ms  766.77us  30.34ms   70.83%
    Req/Sec     0.91k   144.40     2.09k    76.23%
  1653346 requests in 1.00m, 203.40MB read
Requests/sec:  27557.39
Transfer/sec:      3.39MB
```

### Haskell

```
$ wrk -c32 -t32 -d60 http://localhost:3000
Running 1m test @ http://localhost:3000
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     1.33ms  146.45us  18.15ms   75.60%
    Req/Sec   791.06     88.86     1.11k    45.85%
  1424316 requests in 1.00m, 210.54MB read
Requests/sec:  23740.33
Transfer/sec:      3.51MB
```

### Clojure

```
$ wrk -c32 -t32 -d60 http://localhost:3000
Running 1m test @ http://localhost:3000
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    26.20ms   65.33ms 355.01ms   92.52%
    Req/Sec   121.87     64.48   435.00     66.83%
  232496 requests in 1.00m, 35.03MB read
Requests/sec:   3874.92
Transfer/sec:    597.89KB
```

### Elixir

```
$ wrk -c32 -t32 -d60 http://localhost:3000
Running 1m test @ http://localhost:3000
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     3.38ms   13.07ms 128.71ms   98.70%
    Req/Sec   560.90    167.82     2.70k    77.53%
  1020955 requests in 1.00m, 174.24MB read
Requests/sec:  17016.77
Transfer/sec:      2.90MB
```

### Erlang

```
$ wrk -c32 -t32 -d60 http://localhost:3000
Running 1m test @ http://localhost:3000
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     4.49ms   19.90ms 156.80ms   98.09%
    Req/Sec   643.32    259.12     4.00k    80.22%
  1169141 requests in 1.00m, 170.54MB read
Requests/sec:  19486.93
Transfer/sec:      2.84MB
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