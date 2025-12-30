# Ansible Workstation Project

## Overview
This project is an Ansible playbook designed to configure developer workstations. It supports both **macOS** and **Ubuntu/Debian** operating systems. The goal is to automate the installation and configuration of common development tools, ensuring a consistent environment across different machines.

## Key Features
- **Cross-Platform**: Works on macOS and Debian-based Linux distributions.
- **Role-Based**: Organized into modular roles (e.g., `nodejs`, `gemini`, `cloud`, `terminal`).
- **Local Execution**: Designed to run against `localhost`.
- **User-Space Focus**: Many tools (like `nvm`, `sdkman`) are installed in the user's home directory to avoid system conflicts.
- **CI/CD**: Uses GitHub Actions to test roles on Ubuntu and macOS runners.

## Code Review Guidelines

When reviewing code for this project, please focus on the following areas:

### 1. Idempotency
- Ensure that tasks are idempotent. Running the playbook multiple times should not result in errors or unnecessary changes.
- Use `creates` or `changed_when` checks for shell/command tasks to prevent them from running every time.

### 2. Cross-Platform Compatibility
- Verify that tasks work on both macOS and Ubuntu/Debian.
- Use `ansible_distribution` conditionals where necessary (e.g., `apt` for Linux, `homebrew` for Mac).
- Avoid hardcoding paths that differ between OSs unless handled dynamically.

### 3. Privilege Management
- **User vs. Root**: Be mindful of `become: yes`.
    - System-wide packages (apt, system configurations) require `become: yes`.
    - User-space tools (nvm, sdkman, gemini-cli) should **not** run as root and should target the `local_home`.

### 4. Dependencies
- Check `meta/main.yml` in roles to ensure dependencies are correctly defined (e.g., `gemini` role depending on `nodejs`).

### 5. Code Style
- Follow standard YAML syntax.
- Use meaningful task names.
- Keep roles focused and modular.

### 6. Testing
- If possible, verify changes on both a Mac and a Linux environment.
- The project uses GitHub Actions for CI/CD. Ensure that the automated workflows pass for any new changes.

## Contribution & Workflow

### Branching
- All code changes should be committed to the `dev` branch.

### Commit Messages
- Use **Semantic Versioning (SemVer)** notation for commit messages (e.g., `feat: add new role`, `fix: bug in task`).
```