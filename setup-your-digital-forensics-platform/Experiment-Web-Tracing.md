Now that we seen Sysdig Falco, we will now do a sneak preview into Sysdig Inspect. Which really is a packetsniffer on the Linux kernel layer.

#### First step is to sysdig directly into the running *k8s* node. 

`ssh -oStrictHostKeyChecking=no root@node01 "curl -s https://s3.amazonaws.com/download.draios.com/stable/install-sysdig | sudo bash"`{{execute HOST1}}

**Note:** This is just an example for training purposes and not used in a real-life scenario.

Now use ssh to access the node01 terminal.

`ssh -oStrictHostKeyChecking=no root@node01`{{execute HOST1}}

#### Now that we have entered the *node01* terminal we can start our `sysdig -w tracing` 

`cd /pods/sysdig/captures ; sysdig -w nginx.scap &`{{execute HOST1}}

Open the **NgInx** tab again and open the webpage several times and try to access various virtual hosts/directies.

Now don't forget to stop the capture proces with `kill %1`{{execute HOST1}}

### Analysing your captured data with the CLI

To analyse the captured data we have a CLI and GUI available. First we will go into the CLI.

Look with `ls /nginx.scap` is in the current directory (should be `/pods/sysdig/captures`)

This capture file contains all kernel tracing information from your Kubernetes Node. Great feature is that we can easily search through this file using Sysdig.

First example is searching for all the *proc_name = nginx* data.

`sysdig -r nginx.scap proc.name = nginx`{{execute HOST1}}

Look through the data output. Maybe you can find your web requests

Other example is getting the list of running containers on this *k8s* node.

`sysdig -r nginx.scap -c lscontainers`{{execute HOST1}}

Now re-use the container.id to get more information about this container

`sysdig -r nginx.scap container.id = 1234567`{{execute HOST1}}

Besides that also other great queries are available. Just an example to get the running HTML file which is accessed during our capture. Please extra attention various options like `fd`/`evt` that are used.

`sysdig -r nginx.scap -p "%evt.time %fd.directory %fd.filename" "evt.type=open and evt.dir=< and proc.name=nginx"{{execute HOST1}}

#### Using the GUI called Inspect

Now it's time start playing around in the GUI

![Sysdig Inspect Experiment4](https://raw.githubusercontent.com/avwsolutions/katacoda-scenarios/master/setup-your-digital-forensics-platform/images/experiment4.png)

