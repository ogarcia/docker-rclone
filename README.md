# Small container of Rclone based on Alpine Linux

[![forthebadge](https://forthebadge.com/images/badges/powered-by-electricity.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/created-with-commands.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/works-on-my-machine.svg)](https://forthebadge.com)

(c) 2018-2024 [Connectical] Óscar García Amor

Redistribution, modifications and pull requests are welcomed under the terms
of GPLv3 license.

[Rclone][rc] is a command line program to sync files and directories to and
from several cloud services.

This container packages **Rclone** under [Alpine Linux][al] a lightweight
Linux distribution.

Visit [Quay][qu] or [GitLab][gl] to see all available tags.

[rc]: https://rclone.org/
[al]: https://alpinelinux.org/
[qu]: https://quay.io/repository/connectical/rclone
[gl]: https://gitlab.com/connectical/container/rclone/container_registry

## Run

To run this container, simply exec.

```sh
alias docker="podman" # If you are using podman
docker run -t -i --rm \
  -v /my/data/directory:/data \
  registry.gitlab.com/connectical/container/rclone
```

This runs a `sh` shell and mounts your data directory `/my/data/directory`
in `/data`. Now you can run `rclone help` to see the options.

If you want run Rclone directly without enter in a shell you can pass
`rclone` command as in the following sample.

```sh
alias docker="podman" # If you are using podman
docker run -t -i --rm \
  -v /my/data/directory:/data \
  registry.gitlab.com/connectical/container/rclone \
  /usr/bin/rclone help
```
