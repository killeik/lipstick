
# Directory paths.

binaryDirectory="${HOME}/.local/bin"
configurationDirectory="${CONFIG}/lipstick"
systemdUserDirectory="${CONFIG}/systemd/user"

# Script paths.
scripts=("monitor" "update" "enable" "disable" "uninstall" "apps")

echo "  - Ensuring directories exist"

# Ensure the directories we need exist.
mkdir -p "${binaryDirectory}"
mkdir -p "${configurationDirectory}"
mkdir -p "${systemdUserDirectory}"

echo "  - Writing script files and ensuring they’re executable"

for script in scripts;
do
  scriptName="lipstick-${script}"
  scriptPath="${binaryDirectory}/${scriptName}"
  echo "${files[$scriptName]}" > "${scriptPath}"
  chmod +x "${scriptPath}"
done

echo "  -- Writing systemd unit file"

systemdUnitPath="${systemdUserDirectory}/lipstick.service"
echo "${files['lipstick.service'}" > "${systemdUnitPath}"

echo "  -- Configuring Lipstick for supported apps found on system"

lipstick-configure

echo "  -- Enabling lipstick service and starting it"

lipstick-enable

echo ""
echo "Done."
echo ""
echo "Usage instructions"
echo ""
echo "Disable service         : lipstick-disable"
echo "Re-enable service       : lipstick-enable"
echo "Uninstall               : lipstick-uninstall"
echo ""
echo "Reconfigure             : lipstick-configure"
echo "(after installing apps)"
echo ""
echo "Update to latest version: lipstick-update"
echo ""
echo "Enjoy!"
echo ""
echo "💕 Small Technology Foundation"
echo "https://small-tech.org"
echo ""
