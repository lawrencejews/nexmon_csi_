NEXMON_CHIP=CHIP_VER_BCM43430a1
NEXMON_CHIP_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_CHIP)`
NEXMON_FW_VERSION=FW_VER_7_45_41_26_r640327
NEXMON_FW_VERSION_NUM=`$(NEXMON_ROOT)/buildtools/scripts/getdefine.sh $(NEXMON_FW_VERSION)`

NEXMON_ARCH=armv7-m

RAM_FILE=brcmfmac43430-sdio.bin
RAMSTART=0x0
RAMSIZE=0x80000

ROM_FILE=rom.bin
ROMSTART=0x800000
ROMSIZE=0xA0000

HNDRTE_RECLAIM_0_END=0x5A2A4

PATCHSIZE=0x2000
PATCHSTART=$$(($(HNDRTE_RECLAIM_0_END) - $(PATCHSIZE)))

# original ucode start and size
UCODESTART=0x4E9C0
UCODESIZE=0xB2A3
 
# original template ram start and size
TEMPLATERAMSTART=0x59c64
TEMPLATERAMSIZE=0x640

FP_DATA_END_PTR=0x38E3C
FP_CONFIG_BASE_PTR_1=0x3AC2C
FP_CONFIG_END_PTR_1=0x3AC28
FP_CONFIG_BASE_PTR_2=0x3A9B4
FP_CONFIG_END_PTR_2=0x3A9B0
# can start at the end of the firmware, it will be overwritten after it is read
FP_CONFIG_BASE=0x5A3A8
FP_CONFIG_SIZE=0xC00
FP_DATA_BASE=0x1000
FP_CONFIG_ORIGBASE=0x1800
FP_CONFIG_ORIGEND=0x2064
