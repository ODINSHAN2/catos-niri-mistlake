# Maintainer: ODINSHAN2 <185443073+ODINSHAN2@users.noreply.github.com>
# Local package: build from this repository with `makepkg -si`.
pkgname=catos-niri-mistlake
pkgver=0.1.0
pkgrel=2
pkgdesc="CatOS Niri DMS catdot Profile in the Mistlake theme"
arch=('any')
license=('MIT')
depends=('catdot')

package() {
  cd "$startdir"
  install -Dm644 profile.toml "$pkgdir/usr/share/catdot/profiles/$pkgname/profile.toml"
  install -d "$pkgdir/usr/share/$pkgname"
  cp -a --no-preserve=ownership tree/. "$pkgdir/usr/share/$pkgname/"
  if [[ -d libexec ]]; then
    install -d "$pkgdir/usr/lib/$pkgname"
    install -m755 libexec/* "$pkgdir/usr/lib/$pkgname/"
  fi
}
