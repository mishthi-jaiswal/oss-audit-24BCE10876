# oss-audit-24BCE10876
This project demonstrates key concepts of open-source software using practical shell scripting on a Linux system. 
# oss-audit-24BCE10876

## Student Details
**Name:** Mishthi Jaiswal  
**Roll Number:** 24BCE10876  
**Chosen Software:** Python  

## Project Description
This project demonstrates key concepts of open-source software using practical shell scripting on a Linux system. It includes five shell scripts that explore system information, package inspection, disk auditing, log analysis, and a creative manifesto generator, showcasing the practical use of Linux commands and automation.

---

## Scripts Description

### Script 1 — System Identity Report
- Displays Linux distribution, kernel version, current user, home directory, system uptime, and date/time.  
- Shows which open-source license covers the OS.  
- **Concepts used:** variables, echo, command substitution, output formatting.

### Script 2 — FOSS Package Inspector
- Checks whether Python is installed and displays its version, maintainer, and description.  
- Uses a case statement to print a short philosophy note about the package.  
- **Concepts used:** if-else, case, dpkg, grep.

### Script 3 — Disk and Permission Auditor
- Loops through important system directories (`/etc`, `/var/log`, `/home`, `/usr/bin`, `/tmp`).  
- Reports each directory’s size, permissions, owner, and group.  
- **Concepts used:** for loop, ls -ld, du -sh, awk.

### Script 4 — Log File Analyzer
- Reads a log file line by line and counts occurrences of a keyword (default: `error`).  
- Displays the last 5 matching lines.  
- **Concepts used:** while-read loop, if-then, counter variables, command-line arguments.

### Script 5 — Open Source Manifesto Generator
- Generates a personalized open-source philosophy statement by asking three interactive questions.  
- Saves the output to a `.txt` file.  
- **Concepts used:** read for user input, string concatenation, output redirection, date command.

---

## How to Run the Scripts

1. First, give execute permission for all scripts (once):
```bash
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
