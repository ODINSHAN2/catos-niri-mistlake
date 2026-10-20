# Maintainer: ODINSHAN2 <185443073+ODINSHAN2@users.noreply.github.com>
# Local package: build from this repository with `makepkg -si`.
pkgname=catos-niri-mistlake
pkgver=0.13.0
pkgrel=1
pkgdesc="CatOS Niri DMS catdot Profile in the Mistlake theme"
arch=('any')
license=('MIT')
depends=('catdot' 'python' 'imagemagick' 'fuzzel' 'dms-shell')

package() {
  cd "$startdir"
  install -Dm644 profile.toml "$pkgdir/usr/share/catdot/profiles/$pkgname/profile.toml"
  install -d "$pkgdir/usr/share/$pkgname"
  cp -a --no-preserve=ownership tree/. "$pkgdir/usr/share/$pkgname/"
  install -Dm755 bin/mistlake-wallpaper "$pkgdir/usr/bin/mistlake-wallpaper"
  install -Dm644 system/ly/mistlake.ini "$pkgdir/usr/share/$pkgname-system/ly/mistlake.ini"
  if [[ -d libexec ]]; then
    install -d "$pkgdir/usr/lib/$pkgname"
    install -m755 libexec/* "$pkgdir/usr/lib/$pkgname/"
  fi
}
