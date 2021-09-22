# Maintainer: kyr <kyr@designisdesign.eu>

pkgname=covertagger
pkgver=1.0
pkgrel=2
pkgdesc="Add and remove cover images from your mp3s (fixed version)"
url="http://www.musaraigne.net/covertagger/"
license=("GPL")
arch=("i686" "x86_64")
depends=("taglib" "openssl")
source=('COPYING' 'covertagger.cpp' 'Makefile' 'README')
md5sums=('d32239bcb673463ab874e80d47fae504'
         '7bcb2b349fc70127573fdf41fcf25324'
         '44284258d426b386e0d2c99cf7dc1a3a'
         'ca9dfb7d549bea5d345922e8df759bf8')

build() {
	cd $srcdir
	make || return 1
}

package() {
	mkdir -p $pkgdir/usr/bin
	cp -v $srcdir/covertagger $pkgdir/usr/bin
}
