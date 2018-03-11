################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="opengl-meson-t82x"
PKG_ARCH="arm"
PKG_LICENSE="nonfree"
PKG_SITE="https://github.com/kszaq/opengl-meson-t82x"
PKG_DEPENDS_TARGET="toolchain libhybris"
PKG_VERSION="915cb48"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="$PKG_NAME-$PKG_VERSION*"
PKG_SECTION="graphics"
PKG_SHORTDESC="opengl-meson: OpenGL ES pre-compiled libraries for Mali GPUs found in Amlogic Meson SoCs"
PKG_LONGDESC="opengl-meson: OpenGL ES pre-compiled libraries for Mali GPUs found in Amlogic Meson SoCs. The libraries could be found in a Linux buildroot released by Amlogic at http://openlinux.amlogic.com:8000/download/ARM/filesystem/. See the opengl package."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
 : # nothing todo
}

makeinstall_target() {
  mkdir -p $INSTALL/system
    cp -PR system/* $INSTALL/system
}

post_install() {
  enable_service unbind-console.service
}
