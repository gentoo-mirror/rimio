# Copyright 2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake
inherit xdg-utils

DESCRIPTION="Program that computes and plots spectrograms"
HOMEPAGE="https://github.com/rimio/specgram"
SRC_URI="https://github.com/rimio/specgram/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
RESTRICT="mirror"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	>=sci-libs/fftw-3.3.10
	>=media-libs/libsfml-2.5.1
"

DEPEND="${RDEPEND}"

BDEPEND="virtual/pkgconfig"

pkg_postinst() {
	xdg_icon_cache_update
}

pkg_postrm() {
	xdg_icon_cache_update
}
