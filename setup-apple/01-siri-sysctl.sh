#!/bin/bash

FILE=/Library/LaunchDaemons/limit.maxfiles.plist
if [ ! -f "$FILE" ]; then

  cat > limit.maxfiles.plist.tmp << EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<!-- Set limits to make siri-bash.profile happy -->
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>limit.maxfiles</string>
    <key>ProgramArguments</key>
    <array>
        <string>launchctl</string>
        <string>limit</string>
        <string>maxfiles</string>
        <string>65536</string>
        <string>65536</string>
    </array>
    <key>RunAtLoad</key>
      <true/>
    <key>ServiceIPC</key>
      <false/>
</dict>
</plist>
EOF

  sudo mv limit.maxfiles.plist.tmp $FILE
  sudo chown root:wheel $FILE

else
  echo "$FILE already exists"
fi

