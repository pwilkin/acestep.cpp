@echo off

set PATH=%~dp0build\Release;%PATH%

rem Multi-GPU: add --device <name> below (CUDA0, CUDA1, Vulkan0, CPU)

ace-server.exe ^
    --host 0.0.0.0 ^
    --port 8085 ^
    --models .\models ^
    --adapters .\adapters ^
    --max-batch 1

pause
