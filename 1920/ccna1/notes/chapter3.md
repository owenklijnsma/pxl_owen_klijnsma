# CCNA 1: Chapter 3
## Protocols
### Unicast
* 1 on 1 communication

### Multicast
* 1 on n<sub>x</sub> communication

### Broadcast
* 1 on n communication

### Anycast
* 1 on n<sub>x</sub> communication, but only the first reciever will respond

---
## OSI Model (Open Systems Interconnect)
### Layer 7: Application Layer
* Communication between end-device and application
    * *e.g. HTTP protocol for browsers*

### Layer 6: Presentation Layer
* Not important (according to `B. Heyns`)

### Layer 5: Session Layer
* Creates session tokens etc

> In practice, layers 5, 6 and 7 are grouped as `Application`

### Layer 4: Transport Layer
* Communication between processes
* Uses PORTS
    * *e.g. PORT 80 is the WEB port address*
    * PORTS can have a value between 1 - 65.000
* TCP Protocol
    * Reliable but slower, because it requires confirmation for every piece of data
* UDP Protocol
    * Unreliable but fast, requires no confirmation
* "Chops" data in packages (Multiplexing) to allow multiple large files to be transported more easily

### Layer 3: Network Layer
* Communication from one network to another
    * *e.g. Home router -> Facebook router*

### Layer 2: Datalink Layer
* Communication between hardware and software
* Uses MAC-address

### Layer 1: Physical Layer
* Converts code to hardware signals
    * *e.g. 10101010 -> light/electrical pulses*

> In practice layers 1 and 2 are grouped as `Network Access`

---
## 

---
`break;`