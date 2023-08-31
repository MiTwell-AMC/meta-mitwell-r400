FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Add TI DP83867 Device Tree and disable USB type-C in u-boot
# Remove DP83867 and add ADIN1300 Device Tree(for OSM-iMX8MP)

SRC_URI +=   " \
             file://M320E_R400_uboot.cfg \
             file://imx8mp-mitwell-r400-hardknott-uboot.dts \
             "


do_configure_prepend() {
	# Add the M320E-R400 u-boot configuration into .config
	sed -i -e 's,CONFIG_USB_TCPC=y,# CONFIG_USB_TCPC is not set,g' ${WORKDIR}/git/configs/imx8mp_evk_defconfig
	cat ${WORKDIR}/M320E_R400_uboot.cfg >> ${WORKDIR}/git/configs/imx8mp_evk_defconfig
}

do_configure_append(){
	# Add the M320E-R400 device tree into u-boot configuration
	cp ${WORKDIR}/imx8mp-mitwell-r400-hardknott-uboot.dts ${S}/arch/arm/dts/imx8mp-evk.dts
}


