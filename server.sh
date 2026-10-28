#!/bin/bash

set -eu

# Multi-GPU: add --device <name> below (CUDA0, CUDA1, Vulkan0, CPU)

./build/ace-server \
    --host 0.0.0.0 \
    --port 8085 \
    --models ./models \
    --adapters ./adapters \
    --max-batch 1
