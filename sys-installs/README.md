# Singluarity Installer

## Script

`install_singularity.sh` installs Singularity CE 4.3.0 by doing the following

- Checks if the user is root or using `sudo`
- Checks if `apt` exists
- Installs dependancies Singularity CE uses

To run, type the following command

```bash
sudo bash install_singularity.sh
```
*You must be either a sudo user or root to run the script.*

## References

[Singularity CE 4.3.0 Install Instructions](https://docs.sylabs.io/guides/4.3/admin-guide/installation.html#install-from-provided-rpm-deb-packages)