# get-ext-ip

Get external IP using container.

The container uses curl to call https://icanhazip.com/ and prints external IP address and then sleeps for a very, very long time.

## OpenShift

Run in OpenShift:

```
oc new-app https://github.com/samisalkosuo/get-ext-ip
```

OpenShift builds image from the Dockerfile.
Use `oc status` to see build status.

When build is done, get pods:

```
oc get pods
```

Output is similar to:
```
NAME                          READY   STATUS      RESTARTS   AGE
get-ext-ip-1-build            0/1     Completed   0          9m15s
get-ext-ip-6d4585bc5c-lg6b7   1/1     Running     0          8m30s
```

Get logs of pod:
```
oc logs get-ext-ip-6d4585bc5c-lg6b7
```

Output is similar to:
```
192.19.45.99
```

And that's the external IP address.