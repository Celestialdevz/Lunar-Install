# Create a temporary directory to extract the DMG
mkdir ~/Downloads/lunar_temp

# Use asr to restore the DMG contents to the temporary directory
asr -i ~/Downloads/lunar.dmg -o ~/Downloads/lunar_temp

# Compress the extracted contents to a ZIP file
zip -r ~/Downloads/lunar.zip ~/Downloads/lunar_temp

# Remove the temporary directory
rm -rf ~/Downloads/lunar_temp

echo "Conversion completed: lunar.dmg -> lunar.zip"
