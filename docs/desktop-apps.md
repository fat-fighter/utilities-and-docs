## Desktop Entry for Apps

### Format

A desktop entry for any application looks like this

	[Desktop Entry]
	Version=1.0
	Type=Application
	Name=Application Display Name
	Icon=/path/to/icon
	Exec=/path/to/executable
	Comment=Application Description
	Categories=Development;IDE;
	Terminal=false

The file containing a desktop entry must be saved with the .desktop extension

### Installation

The desktop entry can be present in two directories

	$HOME/.local/share/applications # For single user
	/usr/share/applications # For all users

After creating the desktop entry, it can be activated using the following
command

	sudo desktop-file-install /path/to/desktop-entry.desktop

This will add the entry to the launcher
