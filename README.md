# Windows Display Switcher (NirCMD)

## Overview
This is a simple Windows batch script that toggles the primary display using [NirCMD](https://www.nirsoft.net/utils/nircmd.html). It maintains a record of the last active display and switches between two predefined monitors.

## Prerequisites
- [NirCMD](https://www.nirsoft.net/utils/nircmd.html) must be downloaded and placed in a directory accessible via the system `PATH`, or stored in the same folder as this script.

### **Typical System Path for NirCMD**
By default, you can place `nircmd.exe` in one of the following locations:
- `C:\Windows\System32\`
- `C:\Windows\`
- A custom folder added to the system `PATH`

If NirCMD is not found when running the script, ensure that it is correctly placed in one of these directories or explicitly specify its full path in the batch script.

## Usage
1. Ensure NirCMD is installed and accessible.
2. Run `switch_display.bat` to toggle between displays.
3. The script stores the last active display in `active.txt` and switches accordingly.

## How It Works
- If `active.txt` exists, the script reads the last used display.
- Based on the stored value, it switches to the alternate display.
- If `active.txt` does not exist, it defaults to display `1`.

## Creating a Shortcut for Easy Access
If you want to quickly run this script without navigating to its location, you can create a desktop shortcut:

1. **Right-click** on `switch_display.bat` and select **Create Shortcut**.
2. **Move** the shortcut to your desktop or any convenient location.
3. **(Optional)** Right-click the shortcut, go to **Properties**, and:
   - Under **Shortcut** → **Run**, select **Minimized** to prevent a visible command prompt window.
   - Click **Advanced** and check **Run as administrator** (if needed).
4. **Double-click** the shortcut to switch displays instantly.

Alternatively, you can assign a keyboard shortcut:
1. Open **Properties** of the shortcut.
2. Click inside the **Shortcut key** field.
3. Press a combination like `Ctrl + Alt + D` (or another preferred combination).
4. Click **OK** to save.

Now, you can switch displays with a single shortcut key!

## Example
If the current primary display is `1`, running the script will switch to display `2`, and vice versa.

## Notes
- This script assumes you have exactly two displays (`1` and `2`). If your setup is different, modify the script accordingly.
- Ensure the script has permission to modify `active.txt` in its directory.

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
