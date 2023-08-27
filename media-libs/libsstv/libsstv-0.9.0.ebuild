# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake-multilib

DESCRIPTION="SSTV encoder/decoder C library"
HOMEPAGE="https://github.com/rimio/libsstv"
SRC_URI="https://github.com/rimio/libsstv/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"

LICENSE="MIT"
SLOT="0.9"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	>=media-gfx/imagemagick-7.1.1.6
	>=media-libs/libsndfile-1.2.0
"

DEPEND="${RDEPEND}"

BDEPEND="virtual/pkgconfig"
