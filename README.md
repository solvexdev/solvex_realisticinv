# Solvex_GloveBox

A FiveM resource that allows players to open a vehicle's glovebox and displays a `/me` action in chat.

## Features

- Press `G` (default) or use `/glovebox` to open the glovebox.
- Displays a `/me Opens Glovebox` action in chat for immersive RP.
- ESX Legacy compatible (uses the new export method).

## Installation

1. **Download or clone** this repository into your server's `resources` folder.

2. **Add to your `server.cfg`:**
    ```
    ensure Solvex_GloveBox
    ```

3. **Check your `fxmanifest.lua`:**
    Make sure it includes:
    ```lua
    client_scripts {
        'src/config.lua',
        'src/client.lua'
    }
    server_scripts {
        'src/server.lua'
    }
    ```

4. **Configuration:**
    - Edit `src/config.lua` to change the glovebox interaction message:
      ```lua
      Config.gloveboxInteractionMessage = "Opens Glovebox"
      ```

## Usage

- Press `G` (or your mapped key) while in a vehicle to open the glovebox.
- Or use the `/glovebox` command in chat.

## Dependencies

- [ESX Legacy](https://github.com/esx-framework/esx-legacy)
- A chat resource that supports `/me` commands.

## Notes

- Make sure `src/config.lua` is loaded before `src/client.lua` in your manifest.
- The `/me` action uses your server's chat system. If you use a custom `/me` implementation, adjust the event in `client.lua` and `server.lua` as needed.

## Support

For issues or suggestions, open an issue on this repository.
