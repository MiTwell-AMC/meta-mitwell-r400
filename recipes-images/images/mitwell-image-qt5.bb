# Copyright (C) 2015 Freescale Semiconductor
# Copyright 2017-2020 NXP
# Copyright (C) 2022 MiTwell, Inc.
# Released under the MIT license (see COPYING.MIT for the terms)

DESCRIPTION = "NXP Image to validate i.MX machines. \
This image contains everything used to test i.MX machines including GUI, \
demos and lots of applications. This creates a very large image, not \
suitable for production."
LICENSE = "MIT"

require recipes-images/images/mitwell-image.bb

inherit populate_sdk_qt5

CONFLICT_DISTRO_FEATURES = "directfb"


IMAGE_INSTALL += " \
    packagegroup-qt5-imx \
    tzdata \
"

IMAGE_INSTALL_append = " \
    packagegroup-core-ssh-openssh \
    openssh-sftp-server \
    qtbase \
    qtquick1 \
    qtdeclarative \
    qtquickcontrols \
    qtquickcontrols2 \
    qtgraphicaleffects  \
    qtimageformats \
    qtmultimedia \
    qtserialport \
"
