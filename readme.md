# Language Shoot-Out on the Web

No frills look at how these languages compare when targetting the web. We're
looking at things as close to the language as possible to reduce any outside
influences that may affect results. HTTP abilities available in the language's
core or standard library are preffered over external libraries and toolkits.

Currently, there is only one endpoint being tested in each language, a simple 
"Hello World!" message.

## TODO

- Normalize response bodies

## Table of Contents

1. [Languages](#languages)
2. [Criteria](#criteria)
3. [Test Platform](#test-platform)
4. [Results](#results)
    - [Clojure](#clojure)
        - [in Development](#clojure-in-development)
        - [Environment](#clojure-environment)
        - [when Building](#clojure-when-building)
        - [when Executing](#clojure-when-executing)
        - [Perception of](#perception-of-clojure)
    - [Common Lisp](#common-lisp)
        - [in Development](#common-lisp-in-development)
        - [Environment](#common-lisp-environment)
        - [when Building](#common-lisp-when-building)
        - [when Executing](#common-lisp-when-executing)
        - [Perception of](#perception-of-common-lisp)
    - [D](#d)
        - [in Development](#d-in-development)
        - [Environment](#d-environment)
        - [when Building](#d-when-building)
        - [when Executing](#d-when-executing)
        - [Perception of](#perception-of-d)
    - [Elixir](#elixir)
        - [in Development](#elixir-in-development)
        - [Environment](#elixir-environment)
        - [when Building](#elixir-when-building)
        - [when Executing](#elixir-when-executing)
        - [Perception of](#perception-of-elixir)
    - [Erlang](#erlang)
        - [in Development](#erlang-in-development)
        - [Environment](#erlang-environment)
        - [when Building](#erlang-when-building)
        - [when Executing](#erlang-when-executing)
        - [Perception of](#perception-of-erlang)
    - [Go](#go)
        - [in Development](#go-in-development)
        - [Environment](#go-environment)
        - [when Building](#go-when-building)
        - [when Executing](#go-when-executing)
        - [Perception of](#perception-of-go)
    - [Haskell](#haskell)
        - [in Development](#haskell-in-development)
        - [Environment](#haskell-environment)
        - [when Building](#haskell-when-building)
        - [when Executing](#haskell-when-executing)
        - [Perception of](#perception-of-haskell)
    - [PHP](#php)
        - [in Development](#PHP-in-development)
        - [Environment](#PHP-environment)
        - [when Building](#PHP-when-building)
        - [when Executing](#PHP-when-executing)
        - [Perception of](#perception-of-php)
    - [Racket](#racket)
        - [in Development](#racket-in-development)
        - [Environment](#racket-environment)
        - [when Building](#racket-when-building)
        - [when Executing](#racket-when-executing)
        - [Perception of](#perception-of-racket)
    - [Ruby](#ruby)
        - [in Development](#ruby-in-development)
        - [Environment](#ruby-environment)
        - [when Building](#ruby-when-building)
        - [when Executing](#ruby-when-executing)
        - [Perception of](#perception-of-ruby)
    - [Rust](#rust)
        - [in Development](#rust-in-development)
        - [Environment](#rust-environment)
        - [when Building](#rust-when-building)
        - [when Executing](#rust-when-executing)
        - [Perception of](#perception-of-rust)

## Languages

- [Clojure](http://clojure.org/)
- [Common Lisp](http://common-lisp.net/)
- [D](http://dlang.org/)
- [Elixir](http://elixir-lang.org/)
- [Erlang](http://www.erlang.org/)
- [Go](http://golang.org/)
- [Haskell](http://www.haskell.org/)
- [PHP](http://php.net/)
- [Racket](http://racket-lang.org/)
- [Ruby](https://www.ruby-lang.org/)
- [Rust](http://www.rust-lang.org/)

## Criteria

- in Development
- Environment
- when Building
- when Executing
- Perception of

## Test platform

- MacBookPro8,1 (Late 2011)
- 2.4GHz Intel Core i5 (2415M)
- 2x8GB 1333MHz DDR3

## Results

### Clojure

> Clojure is a dynamic programming language that targets the Java Virtual Machine 
> (and the CLR, and JavaScript). It is designed to be a general-purpose language, 
> combining the approachability and interactive development of a scripting language 
> with an efficient and robust infrastructure for multithreaded programming. Clojure 
> is a compiled language - it compiles directly to JVM bytecode, yet remains 
> completely dynamic. Every feature supported by Clojure is supported at runtime. 
> Clojure provides easy access to the Java frameworks, with optional type hints and 
> type inference, to ensure that calls to Java can avoid reflection.

##### Versions

- JRE 1.8.0_20-b26
- Clojure 1.6.0
- Compojure (1.1.9)
- Jetty (7.6.8)
- http-kit (2.1.16)

#### Clojure in Development

[Jetty project code](https://github.com/slogsdon/language-web-shootout/tree/master/clojure/jetty). [http-lit project code](https://github.com/slogsdon/language-web-shootout/tree/master/clojure/http-kit).

#### Clojure Environment

#### Clojure when Building

#### Clojure when Executing

##### `wrk` results

[http-kit](http://http-kit.org/):

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

[Jetty](http://www.eclipse.org/jetty/):

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

#### Perception of Clojure

### Common Lisp ([SBCL](http://www.sbcl.org/))

> Common Lisp is the modern, multi-paradigm, high-performance, compiled, 
> ANSI-standardized, most prominent (along with Scheme) descendant of the 
> long-running family of Lisp programming languages.

##### Versions

- SBCL 1.2.2
- Hutchentoot (1.2.27)

#### Common Lisp in Development

[Project code](https://github.com/slogsdon/language-web-shootout/tree/master/common-lisp)

#### Common Lisp Environment

#### Common Lisp when Building

#### Common Lisp when Executing

##### `wrk` results

```
$ wrk -c32 -t32 -d60 http://localhost:3000/
Running 1m test @ http://localhost:3000/
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    57.29ms  144.19ms 625.17ms   87.04%
    Req/Sec   380.97    308.13     3.89k    79.91%
  696270 requests in 1.00m, 104.25MB read
Requests/sec:  11605.32
Transfer/sec:      1.74MB
```

#### Perception of Common Lisp

### D

> D is a language with C-like syntax and static typing. It 
> pragmatically combines efficiency, control, and modeling power, 
> with safety and programmer productivity.

##### Versions

- dmd v2.065
- Vibe.d (0.7.21-rc.2)

#### D in Development

[Project code](https://github.com/slogsdon/language-web-shootout/tree/master/d)

#### D Environment

#### D when Building

#### D when Executing

##### `wrk` results

```
$ wrk -c32 -t32 -d60 http://localhost:3000/
Running 1m test @ http://localhost:3000/
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     2.57ms  642.44us  14.23ms   76.24%
    Req/Sec   414.02     71.23   666.00     62.58%
  754021 requests in 1.00m, 116.49MB read
Requests/sec:  12568.04
Transfer/sec:      1.94MB
```

#### Perception of D

### Elixir

> Elixir is a dynamic, functional language designed for building 
> scalable and maintainable applications.
> 
> Elixir leverages the Erlang VM, known for running low-latency, 
> distributed and fault-tolerant systems, while also being successfully 
> used in web development and the embedded software domain.

##### Versions

- Elixir 1.0.0
- Erlang 17.3
- Cowboy (1.0.0) via Plug (0.6.0)

#### Elixir in Development

[Project code](https://github.com/slogsdon/language-web-shootout/tree/master/elixir)

#### Elixir Environment

#### Elixir when Building

#### Elixir when Executing

##### `wrk` results

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

#### Perception of Elixir

### Erlang

> Erlang is a programming language used to build massively scalable 
> soft real-time systems with requirements on high availability. Some 
> of its uses are in telecoms, banking, e-commerce, computer telephony 
> and instant messaging. Erlang's runtime system has built-in support 
> for concurrency, distribution and fault tolerance.

##### Versions

- Erlang 17.3
- Cowboy (1.0.0)

#### Erlang in Development

[Project code](https://github.com/slogsdon/language-web-shootout/tree/master/erlang)

#### Erlang Environment

#### Erlang when Building

#### Erlang when Executing

##### `wrk` results

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

#### Perception of Erlang

### Go

> Go is an open source programming language that makes it easy 
> to build simple, reliable, and efficient software.

##### Versions

- Go 1.3.1

#### Go in Development

[Project code](https://github.com/slogsdon/language-web-shootout/tree/master/go)

#### Go Environment

#### Go when Building

#### Go when Executing

##### `wrk` results

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

#### Perception of Go

### Haskell

> Haskell is an advanced purely-functional programming language. An 
> open-source product of more than twenty years of cutting-edge 
> research, it allows rapid development of robust, concise, correct 
> software. With strong support for integration with other languages, 
> built-in concurrency and parallelism, debuggers, profilers, rich 
> libraries and an active community, Haskell makes it easier to 
> produce flexible, maintainable, high-quality software.

##### Versions

- GHC 7.8.3
- WAI (3.0.2.3)
- Scotty (0.9.0)

#### Haskell in Development

[Project code](https://github.com/slogsdon/language-web-shootout/tree/master/haskell)

#### Haskell Environment

#### Haskell when Building

#### Haskell when Executing

##### `wrk` results

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

#### Perception of Haskell

### PHP

> PHP is a popular general-purpose scripting language that 
> is especially suited to web development.

##### Versions

- PHP 5.6.1

#### PHP in Development

[Project code](https://github.com/slogsdon/language-web-shootout/tree/master/php)

#### PHP Environment

#### PHP when Building

#### PHP when Executing

##### `wrk` results

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

#### Perception of PHP

### Racket

> Racket is a full-spectrum programming language. It goes beyond 
> Lisp and Scheme with dialects that support objects, types, 
> laziness, and more. Racket enables programmers to link 
> components written in different dialects, and it empowers 
> programmers to create new, project-specific dialects.

##### Versions

- Racket 6.1

#### Racket in Development

[Project code](https://github.com/slogsdon/language-web-shootout/tree/master/racket)

#### Racket Environment

#### Racket when Building

#### Racket when Executing

##### `wrk` results

```
$ wrk -c32 -t32 -d60 http://localhost:3000/
Running 1m test @ http://localhost:3000/
  32 threads and 32 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency    22.63ms   27.53ms 181.96ms   94.83%
    Req/Sec    57.67     19.17   127.00     71.28%
  110634 requests in 1.00m, 22.26MB read
Requests/sec:   1843.45
Transfer/sec:    379.85KB
```

#### Perception of Racket

### Ruby

> Ruby is a dynamic, open source programming language with 
> a focus on simplicity and productivity. It has an elegant 
> syntax that is natural to read and easy to write.

##### Versions

- Ruby 2.0.0p481 (2014-05-08 revision 45883) [universal.x86_64-darwin13]

#### Ruby in Development

[Project code](https://github.com/slogsdon/language-web-shootout/tree/master/ruby)

#### Ruby Environment

#### Ruby when Building

#### Ruby when Executing

##### `wrk` results

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

#### Perception of Ruby

### Rust

> Rust is a systems programming language that runs blazingly 
> fast, prevents almost all crashes (In theory. Rust is a 
> work-in-progress and may do anything it likes up to and 
> including eating your laundry.), and eliminates data races. 

##### Versions

- Rust 0.12.0-nightly (136ab3c6b 2014-10-04 00:17:04 +0000)
- rust-http (master)

#### Rust in Development

[Project code](https://github.com/slogsdon/language-web-shootout/tree/master/rust)

#### Rust Environment

#### Rust when Building

#### Rust when Executing

##### `wrk` results

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

#### Perception of Rust