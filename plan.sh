pkg_name=atlassian-bamboo
pkg_origin=kmf
pkg_version="6.8.0"
pkg_maintainer="The Habitat Maintainers <humans@habitat.sh>"
pkg_license=("Apache-2.0")
pkg_source="https://product-downloads.atlassian.com/software/bamboo/downloads/${pkg_name}-${pkg_version}.tar.gz"
pkg_filename="${pkg_name}-${pkg_version}.tar.gz"
pkg_shasum="b2b2a6825a84f296b6cd24b1cb1b3b0109218558d482cf1e846e4ef6a458a2a9"
pkg_exports=(
  [bamboo_port]=listening_port
)
pkg_exposes=(bamboo_port)

do_build() {
  return 0
}

do_install() {
  cp -vr ./* "${pkg_prefix}"
  cp "${PLAN_CONTEXT}/bamboo-init.properties" "${pkg_prefix}/atlassian-bamboo/WEB-INF/classes/"
}

