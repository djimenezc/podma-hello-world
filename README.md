# podman-hello-world


## Podman init

run the command
```
    make podman-init
```

```
The system helper service is not installed; the default Docker API socket
address can't be used by podman. If you would like to install it run the
following commands:

	sudo /opt/homebrew/Cellar/podman/4.1.0/bin/podman-mac-helper install
	podman machine stop hello-world; podman machine start hello-world
```

```
You can still connect Docker API clients by setting DOCKER_HOST using the
following command in your terminal session:

	export DOCKER_HOST='unix:///Users/david/.local/share/containers/podman/machine/hello-world/podman.sock'
```


## References
- [Podman docker compose Gist](https://gist.github.com/kaaquist/dab64aeb52a815b935b11c86202761a3)
- [What is podman](https://pandorafms.com/blog/what-is-podman/)
- [system connection](https://docs.podman.io/en/latest/markdown/podman-system-connection.1.html)

# Issues

- [podman machine - Cannot connect to Podman on MacOS](https://github.com/containers/podman/issues/12728)
- [podman machine - Cannot connect to Podman on MacOS](https://stackoverflow.com/questions/70564828/podman-machine-cannot-connect-to-podman-on-macos)