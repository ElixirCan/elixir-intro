#Installing Elixir on Windows
1. Install Chocolaty which allows you to install packages easily
    -Open 'Command Prompt' and run as administrator and type the following command 
    ```
    @powershell -NoProfile -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"
    ```
2. type: 'cinst elixir' to make sure it worked type iex into command line