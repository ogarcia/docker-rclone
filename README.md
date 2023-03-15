# Small container of rclone based on Alpine Linux [![CircleCI](https://circleci.com/gh/ogarcia/docker-rclone.svg?style=svg)](https://circleci.com/gh/ogarcia/docker-rclone)

(c) 2018-2023 Óscar García Amor

Redistribution, modifications and pull requests are welcomed under the terms
of GPLv3 license.

[rclone][1] is a command line program to sync files and directories to and
from several cloud services.

This container packages **rclone** under [Alpine Linux][2] a lightweight
Linux distribution.

Visit [Quay][3] or [GitHub][4] to see all available tags.

[1]: https://rclone.org/
[2]: https://alpinelinux.org/
[3]: https://quay.io/repository/connectical/rclone/
[4]: https://github.com/orgs/connectical/packages/container/package/rclone

## Run

To run this container, simply exec.

```sh
docker run -t -i --rm \
  -v /my/data/directory:/data \
  ghcr.io/connectical/rclone
```

This runs a `sh` shell and mounts your data directory `/my/data/directory`
in `/data`. Now you can run `rclone help` to see the options.

If you want run rclone directly without enter in a shell you can pass rclone
command as in the following sample.

```sh
docker run -t -i --rm \
  -v /my/data/directory:/data \
  ghcr.io/connectical/rclone \
  /usr/bin/rclone help
```
