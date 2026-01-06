Pipelined CPU Simulation and Cache Analysis with gem5 and CACTI
Overview

This project studies how pipeline structure, functional unit timing, and cache design impact performance for a data parallel workload. Using a DAXPY kernel as the benchmark, we simulate execution on different CPU models in gem5 and analyze cache tradeoffs using HP CACTI. The goal is to build intuition about how throughput, latency, and memory behavior interact in modern processor designs.

The project progresses from a non pipelined CPU baseline to a pipelined in order CPU, and finally to cache level optimization. Each stage isolates a different architectural factor and measures its effect on performance.

Motivation and Importance

Many performance bottlenecks in real systems do not come from instruction count alone, but from pipeline throughput limits and memory system behavior. Vector style workloads such as DAXPY appear in scientific computing, signal processing, and machine learning kernels. Understanding how these workloads interact with pipelines and caches is critical for CPU and memory system design.

This project demonstrates why higher throughput can matter more than lower single instruction latency, and why cache bandwidth and energy tradeoffs must be evaluated together rather than in isolation.

Project Goals

The primary goals of this project are:

Establish a performance baseline using a non pipelined CPU model

Isolate and analyze the instruction mix of a DAXPY kernel

Evaluate how pipeline issue latency and operation latency affect throughput

Explore cache line size and associativity tradeoffs using CACTI

Connect CPU pipeline limits with cache access time constraints

Methodology

We implemented a DAXPY kernel of the form Y[i] = aX[i] + Y[i] and simulated it using gem5. The program was compiled with optimizations that avoid unsupported floating point instructions. Execution was divided into three regions using gem5 pseudo instructions to isolate initialization, computation, and post processing phases.

Two CPU models were used:

TimingSimpleCPU, a non pipelined model used to establish instruction mix and baseline behavior

MinorCPU, a four stage in order pipelined model used to study throughput and latency effects

For cache analysis, HP CACTI was used to evaluate L1 cache configurations with varying line sizes and associativity. Metrics such as access time, read energy, leakage power, and cache area were compared across designs.

Key Findings

The DAXPY workload is both compute intensive and memory intensive, with a predictable mix of floating point operations and memory accesses

In the pipelined CPU, reducing issue latency consistently improved IPC even when operation latency increased

Throughput dominated performance because independent loop iterations allowed pipeline overlap

Cache access time was not the bottleneck for the evaluated CPU frequency

A 128B 2 way associative L1 cache provided the best balance of bandwidth, energy efficiency, and area for this workload

What the Project Achieves

This project demonstrates how architectural decisions at both the CPU and cache level affect real workload performance. It shows that:

Instruction level parallelism can hide latency when throughput is high

Memory bandwidth and cache design are critical for data parallel kernels

Cache energy and area must be considered alongside performance

Pipeline and memory system design choices are tightly coupled

The project provides practical insight into performance modeling using industry standard tools and highlights why architectural tradeoffs must be evaluated holistically rather than in isolation.