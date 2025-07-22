# 📊 Server Stats Script

A simple Bash script to analyze and display basic Linux server performance metrics such as CPU usage, memory usage, disk usage, and top resource-consuming processes. This is a useful tool for DevOps, sysadmins, and anyone who wants to monitor server health quickly.

---

## 📝 Features

- ✅ Total CPU usage
- ✅ Total memory usage (used, free, percentage)
- ✅ Total disk usage for root (`/`) partition
- ✅ Top 5 processes by CPU usage
- ✅ Top 5 processes by memory usage
- 🌟 Optional:
  - OS version
  - Uptime
  - Load average
  - Logged-in users
  - Failed login attempts

---

## 📦 Requirements

- Bash shell
- Standard Linux utilities: `top`, `free`, `df`, `ps`, `awk`, `grep`, `uptime`, `who`
- Root privileges for viewing failed logins (optional)

---

## 🚀 How to Use

1. Clone or download this repo to your server.
2. Make the script executable:

   ```bash
   chmod +x server-stats.sh

URL: https://roadmap.sh/projects/server-stats
