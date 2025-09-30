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
1. **CIDR Block** → Network size (like 10.0.0.0/16).  
2. **Subnet** → Small section of the network.  
   - **Public Subnet** → can reach internet.  
   - **Private Subnet** → no internet directly.  
3. **Internet Gateway (IGW)** → Door to internet for public subnet.  
4. **NAT Gateway** → Lets private subnet go *out* to internet (updates, patches), but blocks incoming.  
5. **Route Table** → Map that decides where traffic goes.  
6. **Security Group** → Lock for EC2 (instance-level).  
7. **NACL (Network ACL)** → Lock for subnets.  
8. **Peering / Endpoints** → Connect VPCs or AWS services privately.  

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

👉 **In plain words:** VPC is just your own private area in AWS where you control which resources can talk to the internet and which stay safe inside.
