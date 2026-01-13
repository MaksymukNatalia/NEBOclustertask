

# NEBO Cluster Task

## 📌 Overview

**NEBO Cluster Task** is a technical assignment designed to demonstrate hands-on experience with containerization, cluster orchestration, and infrastructure automation.
The project showcases how to build, deploy, and manage a containerized application using modern DevOps tools.

The main goal is to deploy an application into a clustered environment with scalability, reproducibility, and automated delivery in mind.

---

## 🧠 Architecture

* Containerized application
* Kubernetes-based orchestration
* Infrastructure as Code (Terraform)
* CI/CD automation using GitHub Actions
* Local development via Docker Compose

---

## 🗂 Repository Structure

```
NEBOclustertask/
├── .github/
│   └── workflows/            # GitHub Actions CI/CD pipelines
├── docs/
│   └── images/               # Architecture diagrams
├── nebotaskchart/            # Kubernetes / Helm chart
│   ├── templates/
│   └── values.yaml
├── src/                      # Application source code
├── terraform/
│   ├── main.tf               # Infrastructure definition
│   ├── variables.tf
│   └── outputs.tf
├── Dockerfile
├── docker-compose.yml
├── pom.xml                   # Maven configuration
└── README.md
```

---

## ⚙️ Technology Stack

* **Java (Maven)**
* **Docker**
* **Docker Compose**
* **Kubernetes**
* **Helm**
* **Terraform**
* **GitHub Actions**

---

## 🧰 Prerequisites

| Tool           | Version |
| -------------- | ------- |
| Docker         | ≥ 20.x  |
| Docker Compose | ≥ 2.x   |
| kubectl        | ≥ 1.25  |
| Helm           | ≥ 3.x   |
| Terraform      | ≥ 1.4   |
| Java           | 17      |
| Maven          | 3.8+    |

---

## 🐳 Docker to run it localy

### Build Docker Image

```bash
docker build -t nebo-cluster-task .
```

### Run with Docker Compose

```bash
docker-compose up -d
```

### Stop Services

```bash
docker-compose down
```

---

## ☸️ Kubernetes Deployment

### Deploy Using Helm

```bash
helm install nebo-task ./nebotaskchart
```

### Upgrade Deployment

```bash
helm upgrade nebo-task ./nebotaskchart
```

### Verify Resources

```bash
kubectl get pods
kubectl get services
```

---

## 🌐 Helm Configuration (`values.yaml`)

Values override on CICD by getting values from github secrets



---

## 🏗 Infrastructure with Terraform

### Initialize Terraform

```bash
cd terraform
terraform init
```

### Plan Changes

```bash
terraform plan
```

### Apply Infrastructure

```bash
terraform apply
```

### Destroy Infrastructure

```bash
terraform destroy
```

---

## 🔄 CI/CD Pipeline

CI/CD is implemented using **GitHub Actions**.

### Pipeline Steps

1. Source code checkout
2. Maven build and tests
3.  Image build
4. Push image to container registry - AWS
5. Kubernetes deployment

Pipeline configuration is located in:

```
.github/workflows/
```

---

## 🧪 Testing

```bash
mvn test
```

---

## 🔐 Security

* Secrets are managed via:

  * GitHub Secrets
  * Kubernetes Secrets
* No credentials are stored in the repository

---

