# Raghav Bharathan
# daxpy-config.py — Project 2
# By default, I've set it to TimingSimpleCPU @ 1GHz with DDR3_1600_x64
# To swap the CPU, pass in the command --cpu=MinorCPU when running the simulation
# To change the inputs, pass in the command --input=N, where N is whatever test number you would like to pass in
# To change the frequency, pass in the command --freq=2GHz, or any appropriate test frequency
''' 
    To use this, I've attached an example command below:
    ./build/X86/gem5.opt configs/tutorial/sieve-config.py \
    --cpu=MinorCPU --freq=2GHz --mem=DDR3_2133_x64 --input=1000000
'''

import argparse
import os
import shutil
from pathlib import Path

import m5
from gem5.components.boards.simple_board import SimpleBoard
from gem5.components.processors.simple_processor import SimpleProcessor
from gem5.components.processors.cpu_types import CPUTypes
from gem5.components.cachehierarchies.ruby.mesi_two_level_cache_hierarchy import (
    MESITwoLevelCacheHierarchy,
)
from gem5.components.memory.single_channel import (
    SingleChannelDDR3_1600,
    SingleChannelDDR3_2133,
)
from gem5.components.memory.dram_interfaces.lpddr2 import LPDDR2_S4_1066_1x32
from gem5.components.memory.memory import ChanneledMemory
from gem5.isas import ISA
from gem5.resources.resource import BinaryResource
from gem5.simulate.simulator import Simulator
from m5.stats import dump


parser = argparse.ArgumentParser(
    description="Run DAXPY program with TimingSimpleCPU or MinorCPU."
)
parser.add_argument("--cpu", choices=["TimingSimpleCPU", "MinorCPU"],
                    default="TimingSimpleCPU", help="Select CPU model.")
parser.add_argument("--freq", default="1GHz", help="CPU clock frequency (1–3GHz).")
parser.add_argument("--mem", choices=["DDR3_1600_x64", "DDR3_2133_x64", "LPDDR2_S4_1066_x32"],
                    default="DDR3_1600_x64", help="Memory configuration.")
parser.add_argument("--input", type=int, default=1000000,
                    help="Input size for sieve (1e6 recommended).")

parser.add_argument("--l1i_size", default="16KiB", help="L1 instruction cache size")
parser.add_argument("--l1d_size", default="16KiB", help="L1 data cache size")
parser.add_argument("--l2_size", default="256KiB", help="Unified L2 cache size")
parser.add_argument("--l1_assoc", type=int, default=8, help="L1 cache associativity")
parser.add_argument("--l2_assoc", type=int, default=16, help="L2 cache associativity")
args = parser.parse_args()


cpu_type = CPUTypes.TIMING if args.cpu == "TimingSimpleCPU" else CPUTypes.MINOR
processor = SimpleProcessor(cpu_type=cpu_type, isa=ISA.X86, num_cores=1)


cache_hierarchy = MESITwoLevelCacheHierarchy(
    l1i_size=args.l1i_size,
    l1i_assoc=args.l1_assoc,
    l1d_size=args.l1d_size,
    l1d_assoc=args.l1_assoc,
    l2_size=args.l2_size,
    l2_assoc=args.l2_assoc,
    num_l2_banks=1,
)


if args.mem == "DDR3_1600_x64":
    memory = SingleChannelDDR3_1600(size="512MB")
elif args.mem == "DDR3_2133_x64":
    memory = SingleChannelDDR3_2133(size="512MB")
elif args.mem == 'LPDDR2_S4_1066_x32':
    memory = ChanneledMemory(LPDDR2_S4_1066_1x32, 1, 64, size='512MB') 
else:
    # Manual LPDDR2 setup (v25-compatible)
    from m5.objects import MemCtrl, LPDDR2_S4_1066_x32
    memory_controller = MemCtrl()
    memory_controller.dram = LPDDR2_S4_1066_x32()
    memory_controller.port = None
    memory = memory_controller


board = SimpleBoard(
    clk_freq=args.freq,
    processor=processor,
    memory=memory,
    cache_hierarchy=cache_hierarchy,
)


general_dir = Path.home()
binary = BinaryResource(
    local_path=str(Path.home() / "ece_451_project_2" / "daxp")
)


board.set_se_binary_workload(binary=binary, arguments=[str(args.input)])
simulator = Simulator(board=board) 
simulator.run()


#I added this to organize the stats files based on their model, freq, and memory
#By default, it goes to your documents folder within the Linux subsystem
#To view the results if you're on a Windows machine:
#\\wsl.localhost\Ubuntu\YourHomeDirectory\Documents\gem5project
dump()
base_dir = Path.home() / "Documents" / "gem5project"
base_dir.mkdir(parents=True, exist_ok=True)

run_dir = base_dir / f"DAXPY_{args.cpu}_{args.freq}_{args.mem}"

run_dir.mkdir(parents=True, exist_ok=True)


for file in ["stats.txt", "config.ini", "config.json"]:
    src = Path("m5out") / file
    if src.exists():
        shutil.copy(src, run_dir / file)


print(f"\n[gem5] Simulation complete for {args.cpu} @ {args.freq} with {args.mem}")
print(f"[gem5] Results saved in default m5out/ and also copied to {run_dir}\n")

