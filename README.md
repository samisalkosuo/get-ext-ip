# get-ext-ip

Get external IP using container.

The container uses curl to call https://icanhazip.com/ and prints external IP address and then sleeps for a very, very long time.

## OpenShift

Run in OpenShift:

```
oc new-app https://github.com/samisalkosuo/get-ext-ip
```