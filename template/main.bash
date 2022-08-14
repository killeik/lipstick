
# Embedded files: end.

# Binary and configuration path usage adheres to 
# freedesktop.org XDG Base Directory Specification
# https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html

BINARY_HOME="${HOME}/.local/bin"

DATA_HOME="${XDG_DATA_HOME:-$HOME/.local/share}"
LIPSTICK_DATA_HOME="${DATA_HOME}/lipstick"

CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
SYSTEMD_USER_DIRECTORY="${CONFIG_HOME}/systemd/user"

# Writes string contents ($1) to file ($2).
function writeFile { echo "${1}" > "${2}"; }

# Writes string contents ($1) to file ($2) and makes it executable.
function writeScript { writeFile "${1}" "${2}"; chmod +x "${2}"; }

echo "  • Ensuring directories exist"

mkdir -p "${BINARY_HOME}"
mkdir -p "${LIPSTICK_DATA_HOME}"
mkdir -p "${SYSTEMD_USER_DIRECTORY}"

echo "  • Writing script files and making them executable"

writeScript "${lipstick}" "${BINARY_HOME}/lipstick"
writeScript "${lipstickApps}" "${LIPSTICK_DATA_HOME}/lipstick-apps"

echo "  • Writing systemd unit file"

writeFile "${lipstickService}" "${SYSTEMD_USER_DIRECTORY}/lipstick.service"

echo "  • Configuring Lipstick for supported apps on your system"

lipstick configure

echo "  • Enabling lipstick service and starting it"

# Run enable command, hiding regular output but showing errors.
lipstick enable 2>&1 1>/dev/null

echo ""
echo "💄 Done."

# To end, display usage instructions.
echo ""
echo "For usage instructions, run:"
echo "lipstick help"
echo ""
echo "To access source code, file an issue, etc., please see:"
echo "https://codeberg.org/small-tech/lipstick"
echo ""
echo "💕 Like this? Fund us!"
echo "   https://small-tech.org/fund-us"
echo ""
echo "Copyright 2022-present Aral Balkan, Small Technology Foundation"
echo "Released under AGPL version 3.0"
