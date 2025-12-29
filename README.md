🚀 DevSecOps Evaluation Task
📌 Overview

This project demonstrates a complete end-to-end DevSecOps workflow for a Node.js application deployed in a secure Kubernetes environment running entirely on a local system.

🔒 Important Note

No cloud provider is used (AWS, Azure, GCP, etc.)

All components run locally

Infrastructure definitions are validated locally for demonstration purposes only

The goal is to show secure design, automation, and observability similar to production systems, without using any cloud services.

🎯 Project Scope

This project covers:

Secure Docker image creation

Automated CI/CD security checks

Local Kubernetes deployment with hardening

Infrastructure as Code (local validation)

Monitoring and observability

Security and compliance documentation

🧩 DevSecOps Workflow
Source Code
   ↓
Docker Image Build
   ↓
Container Security Scan (Trivy)
   ↓
CI/CD Pipeline (GitHub Actions)
   ↓
Hardened Image
   ↓
Local Kubernetes Deployment (Minikube)
   ↓
Monitoring (Prometheus + Grafana)

🛠 Tools Used

Docker

Trivy

GitHub Actions

Terraform (local validation only)

Checkov / tfsec

Kubernetes (Minikube)

kubectl

Prometheus

Grafana

Node.js

MongoDB

📁 Project Structure
.
├── docker/
│   ├── Dockerfile
│   └── trivy.txt
│
├── .github/workflows/
│   └── devsecops-pipeline.yml
│
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   └── outputs.tf
│
├── k8s/
│   ├── deployment.yaml
│   ├── service.yaml
│   ├── ingress.yaml
│   ├── network-policy.yaml
│
├── monitoring/
│   ├── prometheus.yaml
│   └── grafana.yaml
│
├── report/
│   └── Security-Compliance-Report.md
│
└── README.md

🔒 Docker & Image Security
Implemented

Minimal base image

Multi-stage Docker build

Non-root container execution

Reduced image size and attack surface

Build Image
docker build -t secure-node-app .

Run Container (Local Test)
docker run -p 3000:3000 secure-node-app

🔍 Container Security Scanning
Trivy Scan
trivy image secure-node-app

Save Scan Output
trivy image secure-node-app > docker/trivy.txt

🔁 CI/CD Pipeline

Implemented using GitHub Actions

Pipeline performs:

Docker image build

Trivy vulnerability scan

Pipeline failure on HIGH / CRITICAL vulnerabilities

Runs automatically on every push

Pipeline file:

.github/workflows/devsecops-pipeline.yml

🛠 Infrastructure as Code (Local Only)

Terraform is used only for defining and validating infrastructure configuration.

⚠️ No resources are provisioned on any cloud platform.

Terraform Commands
cd terraform
terraform init
terraform validate
terraform fmt

🔐 Terraform Security Scan
Checkov
checkov -d terraform/

(Optional) tfsec
tfsec terraform/

☸ Kubernetes Deployment (Local)
Start Local Cluster
minikube start --driver=docker

Verify Cluster
kubectl get nodes

Deploy Application
kubectl apply -f k8s/

Validate Manifests
kubectl apply --dry-run=client -f k8s/

Verify Deployment
kubectl get pods
kubectl get services

🔐 Kubernetes Security Hardening

Non-root containers

securityContext and podSecurityContext

CPU and memory requests/limits

NetworkPolicy for isolation

Controlled service exposure

📊 Observability & Monitoring

This project uses Prometheus and Grafana, both deployed locally on the Kubernetes cluster.

Prometheus

Runs as a pod in the local cluster

Collects Kubernetes metrics

Monitors:

Pod CPU usage

Pod memory usage

Pod restarts

Grafana

Runs locally inside Kubernetes

Uses Prometheus as a data source

Visualizes:

CPU and memory utilization

Pod health and status

Deploy Monitoring Stack
kubectl apply -f monitoring/

Verify Monitoring Pods
kubectl get pods -n monitoring

🧪 All Commands Used (Summary)
docker build -t secure-node-app .
docker run -p 3000:3000 secure-node-app
trivy image secure-node-app
terraform init
terraform validate
checkov -d terraform/
minikube start --driver=docker
kubectl apply -f k8s/
kubectl apply --dry-run=client -f k8s/
kubectl get pods
kubectl apply -f monitoring/

🛡 Security & Compliance Summary

Reduced container attack surface

Enforced non-root execution

Automated vulnerability scanning

CI/CD security gates enabled

Kubernetes runtime hardening applied

Monitoring added for visibility

Remaining production gaps documented

Detailed analysis is available in:

report/Security-Compliance-Report.md
