# openmanage-docker

Runs the Dell "Open Manage" Software on older systems with an up to date OS from a container.

Run like this:

```
docker run -p 1311:1311 --privileged --restart unless-stopped -v /dev:/dev -v /lib/modules:/lib/modules --name openmanage -d --env PASS=[password] jeanluc162/openmanage:730
```

where [password] is a password of your choosing for the root user inside the container.

## Supported Devices

### PowerEdge R-Series

- PowerEdge R200
- PowerEdge R210
- PowerEdge R210 II
- PowerEdge R300
- PowerEdge R310
- PowerEdge R320
- PowerEdge R410
- PowerEdge R415
- PowerEdge R420
- PowerEdge R510
- PowerEdge R515
- PowerEdge R520
- PowerEdge R610
- PowerEdge R620
- PowerEdge R710
- PowerEdge R715
- PowerEdge R720
- PowerEdge R720 XD
- PowerEdge R805
- PowerEdge R810
- PowerEdge R815
- PowerEdge R820
- PowerEdge R900
- PowerEdge R905
- PowerEdge R910
- PowerEdge M420
- PowerEdge M520

### PowerEdge M-Series

- PowerEdge M600
- PowerEdge M605
- PowerEdge M610
- PowerEdge M610 X
- PowerEdge M620
- PowerEdge M710
- PowerEdge M710 HD
- PowerEdge M805
- PowerEdge M820
- PowerEdge M905
- PowerEdge M910

### PowerEdge T-Series

- PowerEdge T100
- PowerEdge T105
- PowerEdge T110
- PowerEdge T110 II
- PowerEdge T300
- PowerEdge T310
- PowerEdge T320
- PowerEdge T410
- PowerEdge T420
- PowerEdge T605
- PowerEdge T610
- PowerEdge T620
- PowerEdge T710

### PowerEdge Series

- PowerEdge 1900
- PowerEdge 1950
- PowerEdge 1955
- PowerEdge 2900
- PowerEdge 2950
- PowerEdge 2970
- PowerEdge 6950