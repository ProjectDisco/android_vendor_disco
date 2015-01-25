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
    vold.te \
    app.te \
    bootanim.te \
    drmserver.te \
    file.te \
    file_contexts \
    mediaserver.te \
    seapp_contexts \
    system.te \
    zygote.te
