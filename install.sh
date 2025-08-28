#!/data/data/com.termux/files/usr/bin/bash
# Installer for MARPD DEMO TOOL

echo "Installing MARPD Tool..."
PREFIX=/data/data/com.termux/files/usr

cp marpd.sh $PREFIX/bin/marpd
chmod +x $PREFIX/bin/marpd

echo "Done! ✅"
echo "Now you can run the tool by typing: marpd"