#!/bin/bash
# A script that deletes the PersistentCache folder to fix spotify freezing
# ~/Library/Application Support/Spotify/
echo Deleting the Spotify cache
cd ~/Library/Application\ Support/Spotify/
rm -r PersistentCache


# Apply cap to Spotify's cache
if grep -q "storage.size=1024" prefs; then
    echo cache size already altered
else
    echo "storage.size=1024" >> prefs
fi