#
# This policy configuration will be used by all products that
# inherit from PD
#

BOARD_SEPOLICY_DIRS += \
    vendor/disco/sepolicy

BOARD_SEPOLICY_UNION += \
    service_contexts \
    genfs_contexts \
    installd.te \
    vold.te
