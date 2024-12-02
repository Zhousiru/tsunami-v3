# 🌊 Tsunami V3

Advanced BBRv3 kernel module with aggressive parameters.

> [!WARNING]
>
> Ensure that your kernel has support for BBRv3 (consider using the [XanMod Kernel](https://xanmod.org/)).
>
> Support Linux kernels version 6.10+.
>
> **Use of this kernel module is at your own risk.**

## Benchmark (Just for Fun 😆)

### BBRv3 (Original)

```text
Accepted connection from <REDACTED>, port 6532
[  5] local <REDACTED> port 5201 connected to <REDACTED> port 6533
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec  38.8 MBytes   325 Mbits/sec    0   4.66 MBytes
[  5]   1.00-2.00   sec  53.8 MBytes   451 Mbits/sec    0   4.75 MBytes
[  5]   2.00-3.00   sec  41.2 MBytes   346 Mbits/sec  502   2.04 MBytes
[  5]   3.00-4.00   sec  31.2 MBytes   262 Mbits/sec  655   1.29 MBytes
[  5]   4.00-5.00   sec  28.8 MBytes   241 Mbits/sec  282   1.28 MBytes
[  5]   5.00-6.00   sec  35.0 MBytes   294 Mbits/sec   61   1.92 MBytes
[  5]   6.00-7.00   sec  40.0 MBytes   336 Mbits/sec   98   1.86 MBytes
[  5]   7.00-8.00   sec  40.0 MBytes   336 Mbits/sec    0   1.92 MBytes
[  5]   8.00-9.00   sec  42.5 MBytes   357 Mbits/sec   44   1.91 MBytes
[  5]   9.00-10.00  sec  41.2 MBytes   346 Mbits/sec   86   1.91 MBytes
[  5]  10.00-10.04  sec  2.50 MBytes   473 Mbits/sec    0   1.91 MBytes
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.04  sec   395 MBytes   330 Mbits/sec  1728             sender
```

### Tsunami V3 (Modified BBRv3)

```text
Accepted connection from <REDACTED>, port 6556
[  5] local <REDACTED> port 5201 connected to <REDACTED> port 6557
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec  50.1 MBytes   420 Mbits/sec    0   7.33 MBytes
[  5]   1.00-2.00   sec  72.5 MBytes   608 Mbits/sec    0   7.74 MBytes
[  5]   2.00-3.00   sec  65.0 MBytes   545 Mbits/sec  498   7.87 MBytes
[  5]   3.00-4.00   sec  62.5 MBytes   524 Mbits/sec  759   3.04 MBytes
[  5]   4.00-5.00   sec  51.2 MBytes   430 Mbits/sec  390   2.39 MBytes
[  5]   5.00-6.00   sec  46.2 MBytes   388 Mbits/sec  643   2.09 MBytes
[  5]   6.00-7.00   sec  40.0 MBytes   336 Mbits/sec  1147   2.00 MBytes
[  5]   7.00-8.00   sec  32.5 MBytes   273 Mbits/sec  911    724 KBytes
[  5]   8.00-9.00   sec  41.2 MBytes   346 Mbits/sec  912   2.58 MBytes
[  5]   9.00-10.00  sec  41.2 MBytes   346 Mbits/sec  498   2.20 MBytes
[  5]  10.00-10.04  sec  2.50 MBytes   480 Mbits/sec    0   2.20 MBytes
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.04  sec   505 MBytes   422 Mbits/sec  5758             sender
```
