# Process Guard (Self-Healing Script)

A Bash-based sentinel script that monitors system services and automates recovery and logging.

## 🚀 Overview
This project demonstrates **Service Continuity**. In a production environment, services fail. This script ensures that downtime is minimized by:
1. Detecting if a process (e.g., `ssh`) is active.
2. Triggering a restart attempt if the process is missing.
3. Logging the failure with a timestamp for post-mortem analysis.

## 🛠 Technical Features
- **Environment Agnostic:** Uses `$SCRIPT_DIR` to resolve absolute paths automatically, making it portable across different Linux distributions and usernames.
- **Automated Execution:** Scheduled via **Cron** to run every 60 seconds.
- **Non-Intrusive Monitoring:** Uses `pgrep` with output redirection to `/dev/null` for silent health checks.

## 📈 DevOps Concepts Applied
- **Infrastructure Automation:** Moving from manual checks to scheduled tasks.
- **Deployment:** Synchronizing code between a Host (Ubuntu 25) and a Sandbox (Multipass VM).
- **Observability:** Implementing basic logging (`guard_log.txt`) to track system state changes.