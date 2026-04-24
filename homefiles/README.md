# Bash Aliases

**Aliases may be added or removed later on**

## How to install

Simply run the command below and it will install everything and backup an old `.bash_aliases` file if one exists.

```
bash install-aliases.sh
```

---

## What it includes

`.bash_aliases` includes the following commands and their purposes

### Update/Install/Uninstall Shortcuts

- `update`
    
    This runs `sudo apt update && sudo apt full-upgrade -y` to update the Linux instance

- `autoremove`

    This runs `sudo apt autoremove -y` to remove files the system no longer needs. (This does not include what users manually installed)

- `sai`

    This runs `sudo apt install` to install programs.

- `remove`

    This runs `sudo apt remove` to uninstall programs

### Git

- `gitlog`

    This will run `git log` but it makes it easier to read

- `gs`

    Runs `git status`

- `ga`

    Runs `git add`. Make sure to add a file after you type in `ga`.

### Network

- `netcheck`

    This will run `ping 8.8.8.8` to ping Google's DNS server to check if ICMP works