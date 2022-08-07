# Directory paths.

binaryDirectory="${HOME}/.local/bin"
configurationDirectory="${HOME}/.config/lipstick"
systemdUserDirectory="${HOME}/.config/systemd/user"

# Script paths.

scriptPaths=()
scriptPaths+=("${binaryDirectory}/lipstick-monitor")   # monitor script
scriptPaths+=("${binaryDirectory}/lipstick-update")    # update script
scriptPaths+=("${binaryDirectory}/lipstick-enable")    # enable script
scriptPaths+=("${binaryDirectory}/lipstick-disable")   # disable script
scriptPaths+=("${binaryDirectory}/lipstick-uninstall") # uninstall script
scriptPaths+=("${configurationDirectory}/light")   # light mode configuration script
scriptPaths+=("${configurationDirectory}/dark")    # dark mode configuration script

systemdUnitPath="${systemdUserDirectory}/lipstick.service"

echo "  - Ensuring directories exist"

# Ensure the directories we need exist.
mkdir -p "${binaryDirectory}"
mkdir -p "${configurationDirectory}"
mkdir -p "${systemdUserDirectory}"

echo "  - Writing script files and ensuring they’re executable"

numberOfScripts=${#scripts[@]}
for (( i=0; i<numberOfScripts; i++ ));
do
  scriptPath="${scriptPaths[$i]}"
  echo "${scripts[$i]}" > "${scriptPath}"
  chmod +x "${scriptPath}"
done

echo " -- Writing systemd unit file"

echo "${systemdUnit}" > "${systemdUnitPath}"

echo " -- Enabling lipstick service and starting it"

lipstick-enable

echo ""
echo "Done."
echo ""
echo "Usage instructions"
echo ""
echo "To disable the service, run lipstick-disable"
echo "To re-enable the service, run lipstick-enable"
echo "To uninstall lipstick, run lipstick-uninstall"
echo ""
echo "Configure light mode settings in ~/.config/lipstick/light"
echo "Configure dark mode settings in ~/.config/lipstick/dark"
echo ""
echo "Get app configurations from:"
echo "https://codeberg.org/small-tech/lipstick/src/configurations.md"
echo ""
echo "Enjoy!"
echo ""
echo "💕 Small Technology Foundation"
echo "https://small-tech.org"
echo ""
