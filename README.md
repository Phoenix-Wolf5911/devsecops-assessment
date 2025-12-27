# 🚀 DevSecOps Assessment – Secure Node.js Application

This project demonstrates a **complete DevSecOps workflow** where security is integrated at every stage — from Docker image creation to CI/CD scanning and Kubernetes deployment.

The focus of this project is on **secure practices, automation, and production-ready design**.

---

## 🧠 Project Overview

In this project, I designed and implemented a secure delivery pipeline for a Node.js application by:

- Creating a hardened Docker image
- Automating security checks in CI/CD
- Deploying the application on Kubernetes with basic security controls
- Managing infrastructure using Infrastructure as Code
- Documenting security and compliance decisions clearly

This setup reflects how real DevSecOps pipelines are built and maintained.

---

## ✅ What I Implemented (PROS ONLY)

### 🔒 Docker & Image Security
- Used a **minimal base image** to reduce attack surface
- Implemented **multi-stage Docker builds**
- Configured the container to **run as a non-root user**
- Removed unnecessary files and layers

---

### 🔍 CI/CD Automation & Security
- Built a **GitHub Actions pipeline** for automation
- Integrated **Trivy vulnerability scanning**
- Blocked images with **HIGH and CRITICAL** vulnerabilities
- Ensured security checks run automatically on every push

---

### ☸ Kubernetes Deployment
- Deployed the application using Kubernetes manifests
- Added **securityContext** for safer container execution
- Applied **resource requests and limits**
- Used internal service exposure for controlled access

---

### 🛠 Infrastructure as Code
- Used **Terraform** to manage infrastructure resources
- Ensured repeatable and version-controlled configuration
- Followed consistent and clean infrastructure definitions

---

## 🔁 DevSecOps Workflow (End-to-End)

```text
Developer Code
     |
     v
Docker Image Build
     |
     v
Security Scan (Trivy)
     |
     v
CI/CD Pipeline (GitHub Actions)
     |
     v
Hardened Container Image
     |
     v
Kubernetes Deployment
     |
     v
Secure Application Running
