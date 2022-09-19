vcpkg_from_github(
	OUT_SOURCE_PATH SOURCE_PATH
	REPO smbika007/libsphinx5prealpha
	REF 7d89bf11b52390ea2455371e74840ff5cdea07a5
	SHA512
0
	HEAD_REF main
)

vcpkg_configure_cmake(
	SOURCE_PATH "${SOURCE_PATH}"
	PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)
