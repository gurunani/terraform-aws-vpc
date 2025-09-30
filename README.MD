# VPC Module
Projects follows this module to create their VPC.

## Inputs
* project (required) - Users should specify their project name
* environment (required) - Users should specify their environment
* cidr_block (optional) - Users can provide their CIDR block. Default is 10.0.0.0/16

## Outputs
* vpc_id - Exports VPC ID created

# VPC Architecture

![Diagram](images/VPC.svg)


# AWS VPC (Virtual Private Cloud) – Simple Notes

## What is VPC?
- VPC = Your own private network inside AWS cloud.  
- You decide:
  - How big the network is (IP range).  
  - How to split it into parts (subnets).  
  - Who can connect to internet, and who stays private.  

---

## Main Parts
- **CIDR Block (Classless Inter-Domain Routing Block)**  
  The “address range” of your network.  
  Example: `10.0.0.0/16` covers `10.0.0.0` to `10.0.255.255`.
- **Subnet (Subnetwork)**  
  A smaller section of the main network, like a neighborhood in a city.
- **Public Subnet**  
  A subnet that can connect directly to the internet.
- **Private Subnet**  
  A subnet that **cannot** connect directly to the internet; used for internal servers.
- **IGW (Internet Gateway)**  
  A door that allows your public subnet to reach the internet.
- **NAT Gateway (Network Address Translation Gateway)**  
  Lets private subnet go **out** to the internet (for updates) but blocks incoming traffic.
- **Route Table**  
  A map that tells the network where to send traffic.
- **Security Group (SG)**  
  A “door lock” for individual EC2 instances; controls inbound/outbound traffic.
- **NACL (Network Access Control List)**  
  A “bigger lock” for the whole subnet; controls traffic at subnet level.
- **VPC Peering / Endpoints**  
  Private connections to other VPCs or AWS services without going through the internet.
  

---

## Think of it Like a House
- **VPC** = Entire building.  
- **Subnets** = Different rooms.  
- **IGW** = Main door to outside world.  
- **NAT** = Small window to go out but no one can come in.  
- **Route Table** = Instructions for who goes where.  
- **Security Group & NACL** = Security guards at doors.  

---

## Example Setup
- **Public Subnet** → Web server (people can access it).  
- **Private Subnet** → Database (no outsider can touch it).  

---
**Elastic IP (EIP)** → A static public IPv4 address in AWS.  
It doesn’t change when you stop/start an instance.  
Mostly used for EC2 or NAT Gateways that need a fixed IP.  

👉 **In plain words:** VPC is just your own private area in AWS where you control which resources can talk to the internet and which stay safe inside..
