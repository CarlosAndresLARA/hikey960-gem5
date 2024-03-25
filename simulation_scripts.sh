#basic
./build/ARM/gem5.opt \
./configs/example/arm/Hikey960.py \
--big-cpus 2 \
--little-cpus 4 \
--cpu-type=timing \
--caches \
--bootloader=./common/binaries/boot.arm64 \
--kernel=./common/binaries/vmlinux.arm64 \
--disk=./common/ubuntu-18.04-arm64-docker.img

#dvfs + power model
./build/ARM/gem5.opt \
./configs/example/arm/Hikey960.py \
--big-cpus 4 \
--little-cpus 4 \
--cpu-type=exynos \
--caches \
--dtb=./system/arm/dt/armv8_gem5_v1_big_little_4_4.dtb \
--bootloader=./common/binaries/boot.arm64 \
--kernel=./common/binaries/vmlinux.arm64 \
--disk=./common/ubuntu-18.04-arm64-docker.img \
--dvfs \
--big-cpu-clock 2362MHz 2112MHz 1805MHz 1421MHz 903MHz \
--little-cpu-clock 1402MHz 999MHz 533MHz \
--big-cpu-voltage 1.0V 0.99V 0.98V 0.97V 0.96V \
--little-cpu-voltage 0.87V 0.86V 0.85V \
--power-models \
--stat-freq 1.0E-3

#checkpoints
./build/ARM/gem5.opt \
./configs/example/arm/Hikey960.py \
--big-cpus 4 \
--little-cpus 4 \
--cpu-type=timing \
--caches \
--dtb=./system/arm/dt/armv8_gem5_v1_big_little_4_4.dtb \
--bootloader=./common/binaries/boot.arm64 \
--kernel=./common/binaries/vmlinux.arm64 \
--disk=./common/ubuntu-18.04-arm64-docker.img \
--dvfs \
--big-cpu-clock 2362MHz 2112MHz 1805MHz 1421MHz 903MHz \
--little-cpu-clock 1402MHz 999MHz 533MHz \
--big-cpu-voltage 1.0V 0.99V 0.98V 0.97V 0.96V \
--little-cpu-voltage 0.87V 0.86V 0.85V \
--restore-from=./m5out/cpt.1044789997495