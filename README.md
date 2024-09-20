# Neovim Plugin Tracker"

# Initial commit
git add .
git commit -m "Initial commit of Neovim Plugin Tracker"

# Instructions for GitHub setup
Write-Host @"
Now, follow these steps:
1. Go to GitHub and create a new repository named 'nvim-plugin-tracker'
2. Then, run these commands in your PowerShell:
   git remote add origin https://github.com/michaperki/nvim-plugin-tracker.git
   git branch -M main
   git push -u origin main

3. Add this to your Neovim configuration (usually init.lua) in the Lazy setup:
   {
     "michaperki/nvim-plugin-tracker",
     config = function()
       require("plugin_tracker").setup()
     end,
   }

4. Save the file and restart Neovim or run :Lazy sync
