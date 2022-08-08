
# Writes string contents ($1) to file ($2).
function writeFile { echo "${1}" > "${2}"; }

# Writes string contents ($1) to file ($2) and makes it executable.
function writeScript { writeFile "${1}" "${2}"; chmod +x "${2}"; }

# Directory paths.
binaryDirectory="${HOME}/.local/bin"
configurationDirectory="${CONFIG}/lipstick"
systemdUserDirectory="${CONFIG}/systemd/user"

echo "  - Ensuring directories exist"

mkdir -p "${binaryDirectory}"
mkdir -p "${configurationDirectory}"
mkdir -p "${systemdUserDirectory}"

echo "  - Writing script files and making them executable"

writeScript "${lipstick}" "${binaryDirectory}/lipstick"
writeScript "${lipstickApps}" "${configurationDirectory}/lipstick-apps"

echo "  -- Writing systemd unit file"

writeFile "${lipstickService}" "${systemdUnitPath}/lipstick.service"

echo "  -- Configuring Lipstick for supported apps on your system"

lipstick configure

echo "  -- Enabling lipstick service and starting it"

lipstick enable

echo ""
echo "Done."

# To end, display usage instructions.

lipstick help
