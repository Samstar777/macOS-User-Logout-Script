# macOS-User-Logout-Script
A macOS shell script to detect and forcibly log out all currently logged-in users.

## Overview
This script is designed to detect and forcibly log out all currently logged-in users on macOS systems. It is useful for administrators who need to ensure that no active user sessions remain on a machine.

## Features
- Detects all logged-in users.
- Excludes `root` and system processes.
- Logs out users forcibly using `launchctl`.

## Usage
1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/Samstar777/macOS-User-Logout-Script.git

2. Navigate to the directory:
  cd macOS-User-Logout-Script

3. Make the script executable:
  chmod +x logout_all_users.sh

4. Run the script with sudo:
  sudo ./logout_all_users.sh

## Requirements

- Mac devices
- Administrator privileges (sudo)
  
## Disclaimer

This script forcibly logs out users, which may result in data loss for any unsaved work. Use it cautiously and preferably in a controlled environment.

## Credits

Created by Salim Ukani aka Samstar777.

## License

This project is licensed under the MIT License.
