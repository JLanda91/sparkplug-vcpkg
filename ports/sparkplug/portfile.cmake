vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO JLanda91/sparkplug
    REF 1.0.0
    SHA512 dee624c0f496136a4aec2c1df4ab83c321ceac1fa556480a166d33b84e098416d0bc6041f0d73a095e618c68f7786367273a116d0465dca2bfc08c496571645a
)

vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
)

vcpkg_cmake_install()

vcpkg_cmake_config_fixup()

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
