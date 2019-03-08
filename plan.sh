pkg_name=atlassian-bamboo
pkg_origin=kmf
pkg_version="6.7.2"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("Apache-2.0")
pkg_source="https://product-downloads.atlassian.com/software/bamboo/downloads/${pkg_name}-${pkg_version}.tar.gz"
pkg_filename="${pkg_name}-${pkg_version}.tar.gz"
pkg_shasum="7b58fd62f1662672e0fb1c6528c8a7815b3276cb859b8a842f88dee90fd1780b"
pkg_exports=(
  [bamboo_port]=listening_port
)
pkg_exposes=(bamboo_port)

do_build() {
  return 0
}

do_install() {
  cp -vr ./* "${pkg_prefix}"
echo ""
echo $pkg_prefix
echo ""
echo $pkg_svc_config_path
echo ""
echo $HAB_PKG_PATH
echo "kmf"
}

