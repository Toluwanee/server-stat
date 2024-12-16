---

# server-stats Script
A script server-stats.sh that can analyse basic server performance stats


This Bash script provides an overview of system resource usage and information. It retrieves details about CPU, memory, disk usage, top resource-consuming processes, operating system version, logged-in users, and system uptime. It is useful for monitoring system performance and gaining quick insights into the current state of your machine.

---

# Features

1. **CPU Usage and Statistics**  
   - Displays total CPU/multiprocessor usage using the `mpstat` command.

2. **Memory Usage**  
   - Shows the total memory usage in human-readable format using the `free -h` command.

3. **Disk Usage**  
   - Outputs the disk usage across all mounted file systems in human-readable format with `df -h`.

4. **Top 5 CPU-Consuming Processes**  
   - Lists the top 5 processes currently consuming the most CPU resources, extracted using the `top` command.

5. **Top 5 Memory-Consuming Processes**  
   - Lists the top 5 processes consuming the most memory resources, also extracted using the `top` command.

6. **Operating System Version**  
   - Displays the OS version by reading from `/etc/*release`.

7. **Logged-In Users**  
   - Outputs the details of currently logged-in users using the `w` command.

8. **Last Boot Time**  
   - Displays the time the system was last booted using `uptime -s`.

9. **Current Uptime and Load Average**  
   - Shows the system uptime and load averages using the `uptime` command.

---

## Prerequisites

Ensure the following commands are installed and available on your system:  

- `mpstat` (part of the `sysstat` package)  
- `free`  
- `df`  
- `top`  
- `cat`  
- `w`  
- `uptime`

---

## How to Use

1. **Download or Clone the Script**  
   Save the script as `serverstats.sh` on your system.

2. **Grant Execute Permissions**  
   Run the following command to make the script executable:  
   ```
   chmod +x serverstats.sh
   ```

3. **Execute the Script**  
   Run the script with the following command:  
   ```
   ./serverstats.sh
   ```

---

## Output Example

### Sample Output from the Script:
```
Total CPU/multiprocessor usage, and statistics
Linux 5.15.0-60-generic (hostname)   12/16/2024  _x86_64_  (8 CPU)

11:45:00     CPU    %usr   %nice %sys %iowait  %irq  %soft  %steal  %guest  %gnice   %idle
11:45:00     all    5.50    0.00  2.20    0.80   0.00   0.01    0.00    0.00    0.00   91.49

Total Memory usage in %
              total        used        free      shared  buff/cache   available
Mem:          15Gi       3.4Gi       6.5Gi       1.3Gi       5.0Gi       9.9Gi
Swap:         2.0Gi       0.1Gi       1.9Gi

Total disk usage
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   15G   32G  32% /

This is the top 5 processes currently used by the CPU
  PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
  1347 root      20   0   24592   3284   2764 R   5.0   0.1   0:00.01 top
  1348 user      20   0   24592   3284   2764 S   4.5   0.2   0:00.03 python

Top 5 processes that are consuming memory
  PID USER      PR  NI    VIRT    RES    SHR S  %CPU  %MEM     TIME+ COMMAND
  1347 root      20   0   24592   4284   3764 R   1.0   3.1   0:00.01 chrome

Operating system version
Ubuntu 20.04.6 LTS (Focal Fossa)

Logged in users details
  11:47:10 up  1:03,  3 users,  load average: 0.00, 0.00, 0.00
USER     TTY      FROM             LOGIN@   IDLE   JCPU   PCPU WHAT
user     pts/0    :0               10:46    1:01m  0.01s  0.01s bash

UPTIME AT LAST UPTIME
2024-12-16 11:47:10

UPTIME AND LOAD AVERAGE
 11:47:10 up  1:03,  3 users,  load average: 0.00, 0.00, 0.00
```

---

## Notes

- **Customizations**: Feel free to modify the script to suit your needs. For example, adjust the number of processes listed or format the output differently.
- **Dependencies**: If any command is missing or unavailable, install the required package using your system's package manager (e.g., `apt` for Debian-based systems, `yum` for Red Hat-based systems).
- **Permissions**: Some commands may require root privileges to provide full details. Use `sudo` if necessary.

---

## Troubleshooting

- If you encounter errors like `command not found`, install the missing utilities:
  ```
  sudo apt install sysstat procps coreutils
  ```

---

## License

This script is open-source and available for personal use. Modify and distribute it as needed. Contact me for commercial use

--- 

