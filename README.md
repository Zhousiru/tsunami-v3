# 🌊 Tsunami V3

Advanced BBRv3 kernel module with aggressive parameters.

> [!WARNING]
>
> Ensure that your kernel has support for BBRv3 (consider using the [XanMod Kernel](https://xanmod.org/)).
>
> Support Linux kernels version 6.10+.
>
> **Use of this kernel module is at your own risk.**

## Installation

1. Ensure that your Linux kernel meets the requirements and install the necessary programs (git, dkms, etc.).
2. Clone repository.

   ```bash
   sudo git clone https://github.com/Zhousiru/tsunami-v3.git /usr/src/tsunami-v3
   ```
3. Build and install kernel module.

   ```bash
   sudo dkms add tsunami/v3
   sudo dkms build tsunami/v3
   sudo dkms install tsunami/v3
   ```
4. Load `tcp_tsunami` kernel module and switch `net.ipv4.tcp_congestion_control` to `tsunami`.

## Benchmark (Just for Fun 😆)

### BBRv3 (Original)

```text
Accepted connection from <REDACTED>, port 6927
[  5] local <REDACTED> port 5201 connected to <REDACTED> port 6928
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec  43.1 MBytes   362 Mbits/sec    0   5.16 MBytes       
[  5]   1.00-2.00   sec  61.2 MBytes   514 Mbits/sec    0   5.12 MBytes       
[  5]   2.00-3.00   sec  60.0 MBytes   503 Mbits/sec    0   5.13 MBytes       
[  5]   3.00-4.00   sec  61.2 MBytes   514 Mbits/sec    0   5.15 MBytes       
[  5]   4.00-5.00   sec  60.0 MBytes   503 Mbits/sec    0   5.18 MBytes       
[  5]   5.00-6.00   sec  61.2 MBytes   514 Mbits/sec    0   5.20 MBytes       
[  5]   6.00-7.00   sec  60.0 MBytes   503 Mbits/sec    0   5.18 MBytes       
[  5]   7.00-8.00   sec  60.0 MBytes   503 Mbits/sec    0   5.17 MBytes       
[  5]   8.00-9.00   sec  61.2 MBytes   514 Mbits/sec    0   5.18 MBytes       
[  5]   9.00-10.00  sec  60.0 MBytes   503 Mbits/sec    0   5.15 MBytes       
[  5]  10.00-11.00  sec  61.2 MBytes   514 Mbits/sec    0   5.11 MBytes       
[  5]  11.00-12.00  sec  60.0 MBytes   503 Mbits/sec    0   5.08 MBytes       
[  5]  12.00-13.00  sec  53.8 MBytes   451 Mbits/sec    0   5.16 MBytes       
[  5]  13.00-14.00  sec  60.0 MBytes   504 Mbits/sec    0   5.16 MBytes       
[  5]  14.00-15.00  sec  60.0 MBytes   503 Mbits/sec    0   5.12 MBytes       
[  5]  15.00-16.00  sec  61.2 MBytes   514 Mbits/sec    0   5.16 MBytes       
[  5]  16.00-17.00  sec  60.0 MBytes   503 Mbits/sec    0   5.10 MBytes       
[  5]  17.00-18.00  sec  52.5 MBytes   440 Mbits/sec    0   5.07 MBytes       
[  5]  18.00-19.00  sec  61.2 MBytes   514 Mbits/sec    0   5.18 MBytes       
[  5]  19.00-20.00  sec  60.0 MBytes   503 Mbits/sec    0   5.14 MBytes       
[  5]  20.00-20.04  sec  2.50 MBytes   536 Mbits/sec    0   5.14 MBytes       
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-20.04  sec  1.15 GBytes   494 Mbits/sec    0             sender
```

### Tsunami V3 (Modified BBRv3)

```text
Accepted connection from <REDACTED>, port 6809
[  5] local <REDACTED> port 5201 connected to <REDACTED> port 6810
[ ID] Interval           Transfer     Bitrate         Retr  Cwnd
[  5]   0.00-1.00   sec  54.8 MBytes   459 Mbits/sec    0   6.44 MBytes       
[  5]   1.00-2.00   sec  75.0 MBytes   629 Mbits/sec    0   6.49 MBytes       
[  5]   2.00-3.00   sec  76.2 MBytes   640 Mbits/sec    0   6.49 MBytes       
[  5]   3.00-4.00   sec  75.0 MBytes   629 Mbits/sec    0   6.50 MBytes       
[  5]   4.00-5.00   sec  76.2 MBytes   640 Mbits/sec    0   6.50 MBytes       
[  5]   5.00-6.00   sec  67.5 MBytes   566 Mbits/sec    0   6.50 MBytes       
[  5]   6.00-7.00   sec  75.0 MBytes   629 Mbits/sec    0   6.50 MBytes       
[  5]   7.00-8.00   sec  76.2 MBytes   640 Mbits/sec    0   6.50 MBytes       
[  5]   8.00-9.00   sec  76.2 MBytes   640 Mbits/sec    0   6.50 MBytes       
[  5]   9.00-10.00  sec  75.0 MBytes   629 Mbits/sec    0   6.50 MBytes       
[  5]  10.00-11.00  sec  76.2 MBytes   640 Mbits/sec    0   6.50 MBytes       
[  5]  11.00-12.00  sec  67.5 MBytes   566 Mbits/sec    0   6.50 MBytes       
[  5]  12.00-13.00  sec  76.2 MBytes   640 Mbits/sec    0   6.50 MBytes       
[  5]  13.00-14.00  sec  75.0 MBytes   629 Mbits/sec    0   6.50 MBytes       
[  5]  14.00-15.00  sec  76.2 MBytes   640 Mbits/sec    0   6.50 MBytes       
[  5]  15.00-16.00  sec  75.0 MBytes   629 Mbits/sec    0   6.50 MBytes       
[  5]  16.00-17.00  sec  76.2 MBytes   640 Mbits/sec    0   6.50 MBytes       
[  5]  17.00-18.00  sec  76.2 MBytes   639 Mbits/sec    0   6.50 MBytes       
[  5]  18.00-19.00  sec  73.8 MBytes   619 Mbits/sec    0   1.57 MBytes       
[  5]  19.00-20.00  sec  68.8 MBytes   577 Mbits/sec    0   6.50 MBytes       
[  5]  20.00-20.04  sec  3.75 MBytes   783 Mbits/sec    0   6.50 MBytes       
- - - - - - - - - - - - - - - - - - - - - - - - -
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-20.04  sec  1.44 GBytes   616 Mbits/sec    0             sender
```
