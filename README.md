# openmanage-docker

Runs the Dell "Open Manage" Software on older systems with an up to date OS from a container.

After Cloning and building the image, it can be run like this:

```
docker run -p 1311:1311 --privileged --restart unless-stopped -v /dev:/dev -v /lib/modules:/lib/modules --name openmanage -d --env PASS=[password] [containername]
```

where [password] is a password of your choosing for the root user inside the container and [containername] is the name you specified during the build process.