# This is a default distribution plug-in.
# Do not modify this file as your changes will be overwritten on next update.
# If you want customize installation, please make a copy.
DISTRO_NAME="AsersX"
DISTRO_COMMENT="AsersX Rootfs OS"

TARBALL_URL['aarch64']="https://github.com/TermuxnTR/AsersX-for-Termux/releases/download/v1.0.0/asersxARM64.tar.xz"
TARBALL_SHA256['aarch64']="0d3c7219f4fc79df44e9438827a8805ecb452a6a9899975a83963a09eba2bca3"

TARBALL_STRIP_OPT=0

distro_setup() {
        # Fix environment variables on login or su.
        local f
        for f in su su-l system-local-login system-remote-login; do
                echo "session  required  pam_env.so readenv=1" >> ./etc/pam.d/"${f}"
        done

        # Configure en_US.UTF-8 locale.
        sed -i -E 's/#[[:space:]]?(en_US.UTF-8[[:space:]]+UTF-8)/\1/g' ./etc/locale.gen
        run_proot_cmd locale-gen
}

