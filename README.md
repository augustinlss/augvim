# Neovim Configuration

This repository contains my personal Nevim configuration, minimalistic and focused on productivity.

## Installation

To install this configuration, follow these steps:

1.  **Backup your existing Neovim configuration (optional but recommended):**
    ```bash
    mv ~/.config/nvim ~/.config/nvim_backup
    mv ~/.local/share/nvim ~/.local/share/nvim_backup
    ```

2.  **Clone this repository:**
    ```bash
    git clone https://github.com/augustinlassus/nvim.git ~/.config/nvim
    ```

3.  **Start Neovim:**
    Open Neovim. It will automatically install the necessary plugins using `lazy.nvim`.

## Structure

The configuration is organized as follows:

-   `init.lua`: The main entry point for the Neovim configuration.
-   `lua/autocommands.lua`: Contains various autocommands for automating tasks.
-   `lua/config/`: Directory for general configuration settings.
-   `lua/keymaps.lua`: Defines custom keybindings.
-   `lua/plugins/`: Manages all Neovim plugins.
    -   `lua/plugins/core/`: Core plugins for essential functionality.
    -   `lua/plugins/ui/`: Plugins related to the user interface and aesthetics.
    -   `lua/plugins/utils/`: Utility plugins.
-   `lua/settings.lua`: General Neovim settings.

## Key Features

-   **Plugin Management:** Uses `lazy.nvim` for efficient and declarative plugin management.
-   **Custom Keybindings:** Personalized keymaps for common actions and workflows.
-   **Modular Configuration:** Organized into logical files for easy maintenance and understanding.
-   **UI Enhancements:** (Details can be added based on specific UI plugins in `lua/plugins/ui/`)
-   **Productivity Tools:** (Details can be added based on specific core/utility plugins)
-   **Smart Diagnostics:** Integrated diagnostic tools for real-time error and warning feedback.
-   **Efficient Navigation:** Quick and intuitive movement between windows and buffers.

## Keybindings

Here's a list of some of the most important keybindings:

| Keybinding      | Description                               |
| :-------------- | :---------------------------------------- |
| `<leader>k`     | Open file explorer                        |
| `<leader>fg`    | Grep (live_grep) with Telescope           |
| `<leader><leader>`| Find Files with Telescope                 |
| `<leader>ha`    | Add file to Harpoon                       |
| `<leader>hl`    | Toggle Harpoon quick menu                 |
| `<leader>hr`    | Clear files from Harpoon                  |
| `<C-e>`         | Toggle Harpoon quick menu                 |
| `<leader>n`     | Go to next Harpoon file                   |
| `<leader>p`     | Go to previous Harpoon file               |
| `<leader>ce`    | Enable Copilot                            |
| `<leader>cd`    | Disable Copilot                           |
| `mfr`           | Find and replace with Spectre             |
| `mg`            | Open Neogit                               |
| `mc`            | Open Neogit commit                        |
| `<leader><space>`| Telescope Find Files (Snacks)            |
| `<leader>,`     | Buffers (Snacks)                          |
| `<leader>sg`    | Grep (Snacks)                             |
| `<leader>gb`    | Git Branches (Snacks)                     |
| `<leader>gl`    | Git Log (Snacks)                          |
| `<leader>gs`    | Git Status (Snacks)                       |
| `<leader>us`     | Toggle Spelling (Snacks)                  |
| `<leader>uw`     | Toggle Wrap (Snacks)                      |
| `<leader>uL`    | Toggle Relative Number (Snacks)           |
| `<leader>ud`    | Toggle Diagnostics (Snacks)               |
| `<leader>ul`    | Toggle Line Number (Snacks)               |
| `<leader>uc`    | Toggle Conceallevel (Snacks)              |
| `<leader>uT`    | Toggle Treesitter (Snacks)                |
| `<leader>ub`    | Toggle Dark Background (Snacks)           |
| `<leader>uh`    | Toggle Inlay Hints (Snacks)               |
| `<leader>ug`    | Toggle Indent (Snacks)                    |
| `<leader>uD`    | Toggle Dim (Snacks)                       |

## Plugins

This configuration leverages several powerful plugins to enhance the Neovim experience:

-   **Telescope:** A highly extensible fuzzy finder over lists. Used for finding files, grepping, and more.
-   **Harpoon:** A simple but powerful tool for quickly navigating between important files.
-   **Copilot:** AI-powered code suggestions directly in your editor.
-   **Spectre:** A search and replace tool across multiple files.
-   **Neogit:** A Magit-inspired Git client for Neovim.
-   **Snacks:** A collection of useful utilities and toggles for various Neovim features.
-   **Gitsigns:** Displays git diffs in the sign column and provides other git-related features.
-   **Nvim-autopairs:** Automatically closes brackets, quotes, etc.
-   **Nvim-ts-autotag:** Automatically closes HTML/XML tags.
-   **Comment.nvim:** A plugin for commenting out lines easily.
-   **Conform.nvim:** An autoformatter for various languages.
-   **Todo-comments.nvim:** Highlights and lists todo comments in your codebase.
-   **Mini.icons:** Provides file icons for better visual navigation.
-   **Vim-dadbod-ui:** A UI for interacting with SQL databases.


## Usage

Once installed, simply open `nvim` in your terminal. The configuration will load automatically.

Feel free to explore the `lua/` directory to understand and customize the configuration to your liking.

## Contributing

If you have suggestions or find issues, please open an issue or pull request on the GitHub repository.