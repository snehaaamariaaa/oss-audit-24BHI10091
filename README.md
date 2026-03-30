# OSS Audit — Mozilla Firefox

**Student Name:** Sneha Maria
**Registration Number:** 24BHI10091
**Chosen Software:** Mozilla Firefox
**Course:** Open Source Software | VIT

---

## About This Project

This repository is a capstone project for the Open Source Software (OSS) NGMC course at VIT. It contains a structured audit of Mozilla Firefox — covering its origin, philosophy, license, Linux footprint, ecosystem, and a comparison with its proprietary alternative (Google Chrome).

The repository also includes five shell scripts that demonstrate practical Linux and Bash scripting skills as part of the project requirements.

---

## Scripts

| Script | File | Description |
|--------|------|-------------|
| Script 1 | script1.sh | System Identity Report — displays distro, kernel, user, uptime, date and license info |
| Script 2 | script2.sh | FOSS Package Inspector — checks if Firefox is installed and prints a philosophy note |
| Script 3 | script3.sh | Disk and Permission Auditor — audits key system directories and Firefox config folder |
| Script 4 | script4.sh | Log File Analyzer — reads a log file and counts occurrences of a keyword |
| Script 5 | script5.sh | Open Source Manifesto Generator — takes user input and saves a personal manifesto to a .txt file |

---

## How to Run Each Script on Linux

### Dependencies
- Bash (pre-installed on all Linux systems)
- `rpm` (Fedora/RHEL) or `dpkg` (Ubuntu/Debian) — pre-installed based on your distro
- No additional installs required

### Setup
```bash
# 1. Clone this repository
git clone https://github.com/YOUR_USERNAME/oss-audit-24BHI10091

# 2. Navigate into the folder
cd oss-audit-24BHI10091

# 3. Make all scripts executable
chmod +x script1.sh script2.sh script3.sh script4.sh script5.sh
```

### Running Each Script
```bash
# Script 1 — System Identity Report
./script1.sh

# Script 2 — FOSS Package Inspector
./script2.sh

# Script 3 — Disk and Permission Auditor
./script3.sh

# Script 4 — Log File Analyzer
# Usage: ./script4.sh <logfile> [keyword]
./script4.sh /var/log/syslog error
# On Fedora/RHEL use:
./script4.sh /var/log/messages error

# Script 5 — Open Source Manifesto Generator
./script5.sh
```

---

## Repository Structure
```
oss-audit-24BHI10091/
├── README.md
├── script1.sh
├── script2.sh
├── script3.sh
├── script4.sh
└── script5.sh
```

---

## Notes

- Script 4 requires a valid log file path as the first argument. If you are on Ubuntu, use `/var/log/syslog`. On Fedora, use `/var/log/messages`.
- Script 5 is interactive — it will ask you three questions and save your manifesto as `manifesto_<username>.txt` in the same folder.
- All scripts were written and tested on Linux using Bash.

---

## License

This project is submitted for academic evaluation under VIT's Open Source Software course. The shell scripts are original work by Sneha Maria (24BHI10091).
