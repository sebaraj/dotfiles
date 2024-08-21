#!/bin/bash

send_notification() {
  osascript -e "display notification \"$1\" with title \"Command Notification\""
}

"$@"

if [ $? -eq 0 ]; then
  MESSAGE="Command '$@' completed successfully."
else
  MESSAGE="Command '$@' failed."
fi

send_notification "$MESSAGE"

