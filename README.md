# DevSecOps Project

## 1) Executive Summary
An end‑to‑end delivery pipeline for a full‑stack ecommerce application.  

*Summary: The project focuses on full automation of CI/CD, integrated with security and performance testing.*

## 2) What’s Included
- Project analysis  
- Containerized services: backend (.NET) + frontend (React) packaged with Docker  
- CI/CD with GitLab Runner: source code scan, build image, image scan, push to registry, deploy, runtime security scan, performance testing  
- Security gates: CodeClimate (code quality), Snyk (SCA), Arachni (DAST), K6 (performance)  
- Private image registry: Portus  
- Optional (planned): Kubernetes ingress and load balancing  

*Summary: Full set of components and tools applied throughout the delivery pipeline.*

## 3) Milestones & Status (reverse‑chronological)
- **Day 1 (22/09/2025) — Analysis → Containerized Deployment**  
  - [Project Analysis](docs/project-analysis.md)  
  - [Deploy Project with Docker](docs/deploy-project-with-docker.md)  
  - **Status:** ✅ Completed 22/09/2025

- **Day 2 (23/09/2025) — Setup Gitlab Server And Install Gitlab Runner - Setup Portus**  
  - [Setup Gitlab - Gitlab Runner](docs/gitlab-and-runner-setup.md)  
  - [Setup Portus](docs/portus-setup.md) 
  - **Status:** (✅ Completed 23/09/2025 )     

*Summary: .*

## 4) Architecture at a Glance
- Developer pushes code → **Source code scan (CodeClimate, Snyk)**  
- CI/CD pipeline runs **build** → generates Docker image  
- Image undergoes **security scan** before pushing  
- Image pushed to **Portus** (private registry)  
- **Deploy** stage launches container on target server  
- Running application is tested with **DAST (Arachni)** and **runtime scans**  
- **Performance tests (k6)** run against live app and generate report  

*Summary: The CI/CD workflow covers code commit through deployment with continuous security and performance validation.*

## 5) Tech Stack
- **Source & CI/CD:** GitLab, GitLab Runner  
- **Containers:** Docker (backend .NET 6, frontend React)  
- **Registry:** Portus (private registry)  
- **Security Gates:**  
  - CodeClimate  
  - Snyk  
  - Arachni  
- **Performance:** K6  
- **Kubernetes (optional):** Ingress‑NGINX via Helm  

*Summary: Core technologies and tools enabling the DevSecOps pipeline.*

## 6) Infrastructure
- Hosting environment: Google Cloud Platform (GCP)  
- Compute: GCE (VM instances)
- Networking: Private VPC, firewall rules for registry and apps  
- (Optional/Planned) Kubernetes cluster on GKE with ingress controller  

*Summary: The solution is deployed and orchestrated on Google Cloud infrastructure, ensuring scalability and secure networking.*

## 7) How to Review
- Read the **Day 1 deliverables** to understand the scope and see the first successful Dockerized deployment.  
  - [Project Analysis](docs/project-analysis.md)  
  - [Deploy Project with Docker](docs/deploy-project-with-docker.md)  
- Review the **Pipeline Reports** folder for automatically generated results: CodeClimate, Snyk, Arachni, K6  
- Browse the **Results/Screenshots** folder for visual evidence of reports, dashboards, and the application running  

*Summary: You can see project progress, delivered outputs, and results through clear reports and screenshots.*
