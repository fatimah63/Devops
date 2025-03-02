### Task: Setting up NGINX on EC2 and Connecting to a Custom Domain


This guide outlines the steps taken to set up an EC2 instance running NGINX on port 80, then configure Cloudflare to point the custom domain **fatimayusuf.uk** to the EC2 instance. The result is access to the NGINX webpage via a subdomain like **nginx.fatimayusuf.uk**.


![Screenshot](./Screenshot%202025-03-02%20at%2010.09.48.png)


---

### Step 1: Launch an EC2 Instance on AWS

1. Go to the **AWS Management Console** and navigate to **EC2**.
2. Click **Launch Instance** and choose an appropriate AMI (Amazon Machine Image) like **Ubuntu** or **Amazon Linux**.
3. Select an instance type (e.g., **t2.micro** for the free tier).
4. Configure instance details, including security groups to allow inbound traffic on **port 80** (HTTP).
5. Launch the instance and download the **key pair** (if you haven’t already).
6. Once the instance is running, note the **public IP address** of the EC2 instance.

---

### Step 2: SSH into the EC2 Instance

1. Open a terminal and use the following command to SSH into the EC2 instance (replace your-key.pem with your actual key file and ec2-public-ip with the EC2 public IP):


2. Once connected, you should be logged into the EC2 instance.

---

### Step 3: Install NGINX on the EC2 Instance

1. Update the package list and install NGINX by running:

   
bash
   sudo apt update
   sudo apt install nginx


2. Start the NGINX service:

   
bash
   sudo systemctl start nginx


3. Enable NGINX to start on boot:

   
bash
   sudo systemctl enable nginx


4. Check if NGINX is running by visiting the public IP of the EC2 instance in a browser. You should see the default NGINX welcome page.

---

### Step 4: Configure Cloudflare DNS Settings

1. Log into **Cloudflare** and add your domain **fatimayusuf.uk** to your account if it’s not already added.
2. Go to the **DNS** section of Cloudflare’s dashboard.
3. Add an **A record**:
   - **Name**: nginx (or any subdomain you prefer).
   - **Type**: A.
   - **Content**: Enter the public IP address of your EC2 instance.
   - **TTL**: Auto or any desired value.

   This A record points the subdomain (e.g., nginx.fatimayusuf.uk) to your EC2 instance’s IP.

4. Save the DNS settings.

---

### Step 5: Access NGINX Webpage via Custom Domain

1. Once DNS changes propagate (this may take a few minutes), open a browser.
2. Type in your subdomain (e.g., nginx.fatimayusuf.uk).
3. You should see the NGINX default webpage served from your EC2 instance.

---

### Conclusion

You have successfully:
- Set up an EC2 instance running NGINX.
- Configured DNS in Cloudflare to point a custom domain to the EC2 instance.
- Accessed the NGINX webpage via a subdomain (e.g., nginx.fatimayusuf.uk).

---
