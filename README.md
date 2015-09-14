Clevir / Workspace
==================

The Clevir-Guacamole workspace the provides the front-end interface for the RDP to HTML5 proxy for the Clevir Workspace portal.

What is the Clevir Workspace docker image?
==================

Clevir-Workspace is a docker container that provides a clientless remote desktop gateway for the [Clevir Workspace portal](http://www.clevirsolutions.com). It supports standard protocols like VNC and RDP. We call it clientless because no
plugins or client software are required.

Thanks to HTML5, once this container is installed on a server, all you need to
access your desktops and applications is a web browser.

How to use this image
=====================

Using this image will require an existing, running Docker container with the
[guacd image](https://registry.hub.docker.com/u/clevir/guacd/).

Once the clevir-guacd and clevir-workspace images are running, Guacamole will be accessible through your Clevir Workspace portal.

Starting the Clevir-Workspace docker container
----------------------------------------------

    docker run --name clevir-workspace --link clevir-guacd:guacd -d -p 8080:8080 clevir/workspace

