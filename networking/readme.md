


Networking in DevOps manages secure and efficient communication between servers, containers, and cloud resources.

- **Connectivity** – Links services, APIs, and databases.
- **Scalability** – Supports dynamic cloud infrastructure.
- **Security** – Controls access with firewalls, VPNs, etc.

## Computer Networks:

A computer network is a system of interconnected devices that communicate and share resources.

### Types of Computer Networks:

- **LAN (Local Area Network)** – Connects devices within a small area (e.g., home, office).
- **WAN (Wide Area Network)** – Covers large geographic areas (e.g., the internet).

### Why are networks important?
They enable communication between devices, allow us to share resources, and support internet browsing. They also support app connectivity and data transfer.

## LAN:
- **Local Area Network**
  - Connects devices within a small area like a home or office.
  - Used for connecting computers, printers, etc.
  - Provides internet access within a small area.

## WAN:
- **Wide Area Network**
  - Covers a larger area than a LAN.
  - An example is the internet.

---

## Key Networking Components:

### Devices that Make Up a Network:

- **Switches** – Connects multiple devices within the same network (e.g., computers, printers). The switch ensures smooth data flow, preventing congestion. It manages data flow and connects devices within the same network.
  
- **Router** – Directs data between networks and connects to the internet. It ensures data gets to the right place.
  
- **Firewall** – Protects networks by blocking unauthorised access. Monitors and controls network traffic.
  
- **IP Address** – A unique identifier for devices on a network. It allows devices to locate and communicate with each other.

### Two Types of IP Addresses:

1. **IPv4** – Most common. Uses dot-decimal notation (e.g., 192.168.1.1). Widely used but being replaced by IPv6.
2. **IPv6** – Uses hexadecimal format. Improved security features. IPv6 offers more addresses, better security, and improved efficiency, making it the future of networking. 🚀

---

## MAC Addresses:

- **A MAC (Media Access Control) address** is a unique, built-in ID assigned to every network adapter. It’s like a serial number for your device’s connection.
  - **Every device has a unique MAC address**.
  - It helps routers identify and manage connected devices.
  - Unlike IP addresses, it doesn’t change (unless manually altered).
  
**MAC Address Format**:  
Example: `A1:B2:C3:D4:E5:F6`

### Function of MAC Addresses:
They operate at the **Data Link Layer**. They help devices identify each other, essential for network communication and security.

---

## Ports and Protocols:

### Ports:
Ports are like doors that allow data to enter and exit a device. Each port has a number assigned to a specific service.

- **Common Ports**:
  - **Port 80** – HTTP (Websites)
  - **Port 443** – HTTPS (Secure Websites)
  - **Port 25** – SMTP (Email Sending)

### Protocols:
Protocols are rules that define how data is sent and received. They ensure proper communication between devices.

- **Common Protocols**:
  - **HTTP/HTTPS** – Load web pages.
  - **FTP** – Transfers files.
  - **TCP/UDP** – Manage data transmission.

**Summary**: Ports = doors, Protocols = rules for communication

---

## Main Protocols:

### **TCP** (Transmission Control Protocol)
- Connection-oriented protocol.
- Ensures reliable data transfer (resends lost data).
- **Used for**: Websites (HTTP/HTTPS), Emails, File Transfers.

**Key Features**:
  - Ensures data is delivered in order.
  - Checks for errors and controls data flow.

### **UDP** (User Datagram Protocol)
- Fast but unreliable network protocol.
- **Used for**: Online Gaming, Video & Voice Calls (VoIP), Live Streaming, DNS (Domain Name System).

**Key Features**:
  - **Speed** – Sends data quickly.
  - **Unreliable** – Data may get lost or arrive out of order.

**Main Difference**:
- **TCP** = Reliable but slower (e.g., web pages, emails).
- **UDP** = Fast but can lose data (e.g., gaming, calls).

---

## OSI Model (Open Systems Interconnection Model):

The **OSI Model** is a 7-layer framework explaining how data moves through a network from one device to another.

### The 7 Layers:

1. **Application Layer** (User Interaction) 🌐
2. **Presentation Layer** (Data Formatting & Encryption) 🔒
3. **Session Layer** (Manages Connections) 🎤
4. **Transport Layer** (Data Delivery – TCP/UDP) 🚚
5. **Network Layer** (IP Addresses & Routing) 🌍
6. **Data Link Layer** (MAC Addresses & Switching) 🔗
7. **Physical Layer** (Hardware & Signals) 📡

---

## OSI Model Layer Details:

### **Layer 1: Physical Layer**
- Transmits raw bit streams over a physical medium (e.g., cables, switches).

### **Layer 2: Data Link Layer**
- Provides node-to-node data transfer and detects errors in the physical layer.
- Uses **MAC addresses**.

### **Layer 3: Network Layer**
- Determines how data is sent to the recipient (routing).
- Uses **IP addresses** and **routers**.

### **Layer 4: Transport Layer**
- Provides reliable data transfer to the upper layers.
- Uses **TCP/UDP** to ensure data is delivered in the right sequence.

### **Layer 5: Session Layer**
- Manages sessions between applications.

### **Layer 6: Presentation Layer**
- Ensures data is in a usable format (e.g., compression, encryption).

### **Layer 7: Application Layer**
- Provides network services directly to applications (e.g., HTTP, FTP, SMTP).

---

## TCP/IP Model:

The **TCP/IP Model** defines how data is transmitted over networks like the internet. It has four layers:

1. **Application Layer** – Apps like web browsers and email (e.g., HTTP, FTP).
2. **Transport Layer** – Manages end-to-end communication (e.g., TCP ensures reliable delivery, UDP is faster but less reliable).
3. **Internet Layer** – Handles addressing and routing of data (e.g., IP ensures data reaches the right destination).
4. **Network Access Layer** – Deals with hardware and physical connections (e.g., Ethernet, Wi-Fi).

---

## DNS (Domain Name System):

The **DNS** translates domain names to IP addresses, allowing users to access websites and services.

### DNS Components:
1. **Name Servers** – Store and manage website information.
2. **Zone Files** – Contain DNS records.
3. **DNS Records** – Specific instructions that tell the internet how to handle a domain.

### Common DNS Records:
- **A Record** – Links a domain to an IPv4 address.
- **AAAA Record** – Links a domain to an IPv6 address.
- **CNAME Record** – Redirects one domain to another.
- **MX Record** – Tells email servers where to send emails.
- **TXT Record** – Stores text information for security and verification.

---

## DNS Resolution:

DNS Resolution is the process of converting a domain name (e.g., google.com) into an IP address (e.g., 142.250.190.46).

### Steps in DNS Resolution:
1. You type a domain name (e.g., example.com).
2. DNS resolver starts searching.
3. It queries the **Root Name Server**.
4. It queries the **TLD Server**.
5. It queries the **Authoritative Name Server**.
6. The resolver gives the IP to your browser.

---

## Domain Registrar and DNS Hosting Provider:

The **Registrar** is where you buy the domain name, and the **DNS Host** is where you manage DNS settings to make the domain work.

### DNS Tools:
- **nslookup** – Basic DNS query tool.
- **dig** – Advanced DNS query tool.
- **/etc/hosts** – Local file for mapping domains to IP addresses.

---

## Routing:

Routing is the process of finding the best path for data to travel across a network.

### Static Routing vs. Dynamic Routing:
1. **Static Routing** – Manually set by a network admin.
2. **Dynamic Routing** – Routes update automatically using routing protocols.

---

## Subnetting:

Subnetting divides a large network into smaller, manageable subnetworks.

- **IP Address** – A unique identifier for devices on a network.
- **CIDR** – Defines how many bits belong to the network.

---

### Binary to Decimal Conversion Example:
- **Binary**: 110101 → **Decimal**: 53

---
