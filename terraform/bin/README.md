### Steps for the VPN administrator:

Step 1. Establish certificate authority. It would be a good idea to map your vpn box with a friendly `A record` like `vpn.cloudgeni.us` and use that reference.

    bin/1-ovpn-init

Step 2. Generate client configuration for employee nilesh

    bin/2-ovpn-new-client nilesh

Step 3. Download client configuration and give it to the employee

    bin/3-ovpn-client-config nilesh

Step 4. Start openvpn server in a container on the instance.

    bin/4-ovpn-start

### Steps for the employee:

Step 1. Install openvpn client

    sudo apt-get install openvpn

Step 2. Check available adapters

    ifconfig

Step 3. Establish VPN connection

    sudo openvpn --config nilesh-automated.ovpn

Step 4. Examine ifconfig to see a new tun adapter

    ifconfig

Step 5. Ping internal machines

    ping $(terraform output app.0.ip)
    ping $(terraform output app.1.ip)

Step 6. Connect to them

    ssh ubuntu@$(terraform output app.0.ip)
    ssh ubuntu@$(terraform output app.1.ip)
