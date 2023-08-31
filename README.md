# meta-mitwell-r400


This README file contains information on the contents of the meta-mitwell-r400-hardknott layer.

Please see the corresponding sections below for details.

BSP Version
===========

imx-5.10.72-2.2.0 with Yocto Hardknott


Dependencies
============

This layer depends on:

  URI: git://git.yoctoproject.org/poky
  branch: master
  revision: HEAD  

  URI: git://git.openembedded.org/meta-openembedded
  layers: meta-oe, meta-multimedia, meta-networking, meta-python
  branch: master
  revision: HEAD

  URI: git://git.openembedded.org/meta-openembedded/meta-oe
  branch: master
  revision: HEAD
  prio: default

  URI: git://git.openembedded.org/meta-openembedded/meta-perl
  branch: master
  revision: HEAD
  prio: default

  URI: git://git.openembedded.org/meta-openembedded/meta-networking
  branch: master
  revision: HEAD
  prio: default


Quick Start
===========

1. $ source setup-environment build/
2. Add this layer to bblayers.conf and the dependencies above
3. Set MACHINE in local.conf to one of the supported boards
4. $ bitbake mitwell-image
5. dd to a SD card the generated wic file 
6. Boot Yocto through SD card
7. Boot the MiTwell OSM-IMX8MP


Table of Contents
=================

  I. Adding the MiTwell layer to your build
 II. Build the Layer
III. License


I. Adding the MiTwell layer to your build
=========================================

Assuming this layer exists at the top-level of your
yocto build tree, you can add it to the build system by adding the
location of the MiTwell layer to bblayers.conf, along with any
other layers needed. e.g.:

  BBLAYERS ?= " \
    /path/to/meta \
    /path/to/meta-poky \
    /path/to/meta-yocto-bsp \
    /path/to/meta-mitwell-r400-hardknott \

or you can run 'bitbake-layers add-layer meta-mitwell-r400-hardknott' command.


II. Build the Layer
===================

   Run 
   $ bitbake mitwell-bsp-layer


II. License
===========

Copyright "MiTwell, Inc."

Email : francis.lee@mitwell.com.tw 
