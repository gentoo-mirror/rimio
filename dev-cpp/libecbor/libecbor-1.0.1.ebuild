# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake-multilib

DESCRIPTION="CBOR library for both desktop and embedded applications"
HOMEPAGE="https://github.com/rimio/libecbor"
SRC_URI="https://github.com/rimio/libecbor/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"

LICENSE="MIT"
SLOT="1.0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""

DEPEND="${RDEPEND}"

BDEPEND="virtual/pkgconfig"

PATCHES=(
	"${FILESDIR}/${P}-security.patch"
	"${FILESDIR}/${P}-no-output-dirs.patch"
)
