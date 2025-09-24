# DevSecOps Project

## 1) Executive Summary
An end-to-end delivery pipeline for a full-stack ecommerce application.

## 2) What’s Included
- Project analysis  
- Containerized services: backend (.NET) + frontend (React) packaged with Docker  
- CI/CD with GitLab Runner: source code scan, build image, image scan, push to registry, deploy, runtime security scan, performance testing  
- Security gates: CodeClimate (code quality), Snyk (SCA), Arachni (DAST), K6 (performance)  
- Private image registry: Portus  
- Optional (planned): Kubernetes ingress and load balancing

## 3) Milestones & Status (reverse-chronological)
- **Day 1 (22/09/2025) — Analysis → Containerized Deployment**  
  - [Project Analysis](docs/project-analysis.md)  
  - [Deploy Project with Docker](docs/deploy-project-with-docker.md)  
  - **Status:** ✅ Completed 22/09/2025

- **Day 2 (23/09/2025) — Setup GitLab & Runner • Setup Portus**  
  - [GitLab & GitLab Runner Setup](docs/gitlab-and-runner-setup.md)  
  - [Portus Setup](docs/portus-setup.md)  
  - **Status:** ✅ Completed 23/09/2025

- **Day 3 (24/09/2025) — Build a DevSecOps pipeline**  
  - [Source Code Security Scanning](docs/source_code_security_scanning.md)  
  - [Build → (optional) Scan Image → Push → Deploy](docs/build-scan-push-deploy.md)  
  - [Runtime Security (Arachni) & Performance (k6) Testing](docs/runtime_performance_testing.md)  
  - **Status:** ✅ Completed 24/09/2025

## 4) Architecture at a Glance
- Developer pushes code → **Source code scan (CodeClimate, Snyk)**
- CI/CD pipeline runs **build** → generates Docker image
- Image undergoes **security scan** before pushing
- Image pushed to **Portus** (private registry)
- **Deploy** stage launches container on target server
- Running application is tested with **DAST (Arachni)** and **runtime scans**
- **Performance tests (k6)** run against live app and generate report

## 5) Tech Stack
- **Source & CI/CD:** GitLab, GitLab Runner  
- **Containers:** Docker (backend .NET 6, frontend React)  
- **Registry:** Portus (private registry)  
- **Security Gates:** CodeClimate, Snyk, Arachni  
- **Performance:** k6  
- **Kubernetes (optional):** Ingress-NGINX via Helm

## 6) Infrastructure
- Hosting: Google Cloud Platform (GCP)  
- Compute: GCE (VM instances)  
- Networking: Private VPC, firewall rules for registry and apps  
- (Optional/Planned) GKE with ingress controller

## 7) How to Review
- Read **Day 1 deliverables** for the first Dockerized deployment:  
  - [Project Analysis](docs/project-analysis.md)  
  - [Deploy Project with Docker](docs/deploy-project-with-docker.md)
- Review **Pipeline configs & reports**:
  - Source code scanning pipeline: [pipeline/scan-source-code.yml](docs/pipeline/scan-source-code.yml)
  - Build/Scan Image/Push/Deploy pipeline: [pipeline/build-scan_image-push-deploy.yml](docs/pipeline/build-scan_image-push-deploy.yml)
  - Runtime performance testing pipeline: [pipeline/runtime-performance-testing.yml](docs/pipeline/runtime-performance-testing.yml)
- Browse **Results/Screenshots** inside the docs for evidence of runs and artifacts.

## 8) Quick Links
- Arachni & k6 scripts: `docs/performance_testing_script/` (see guide)  
- Example artifacts (when pipelines run on tags):  
  - Snyk report (HTML) – see “Download Reports” in the scanning guide  
  - Trivy FS / CodeClimate reports  
  - k6 CSV summaries (smoke/load/stress/soak)

