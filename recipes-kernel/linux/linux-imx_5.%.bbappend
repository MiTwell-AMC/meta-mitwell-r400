FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

# Enable TI DP83867 in kernel

SRC_URI +=   " \
             file://M320E_R400.cfg \
             file://imx8mp-mitwell-r400-hardknott-kernel.dts \
             file://logo_linux_clut224.ppm \
             "


python do_display_banner() {
    bb.plain("***********************************************");
    bb.plain("*              META-MiTwell-BSP               *");
    bb.plain("*    Applying custom kernel configuration     *");
    bb.plain("***********************************************");    
}

addtask display_banner before do_build

do_configure_prepend () {
	# Add the M320E-R400 kernel configuration into .config
	cat ${WORKDIR}/M320E_R400.cfg >> ${B}/.config
}


do_configure_append(){
	# Add the M320E-R400 device tree into kernel configuration
	cp ${WORKDIR}/imx8mp-mitwell-r400-hardknott-kernel.dts ${S}/arch/arm64/boot/dts/freescale/imx8mp-evk.dts
}

