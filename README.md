# DevSecOps Project

## 1) Executive Summary
An end-to-end delivery pipeline for a full-stack ecommerce application, deployed on a high-availability Kubernetes cluster with automated CI/CD, security scanning, and autoscaling.

## 2) Project Goals
- Build a secure, scalable, and automated **DevSecOps pipeline** for a full-stack ecommerce application.
- Deploy the application on a **high-availability Kubernetes cluster** with integrated monitoring, autoscaling, and load balancing.
- Ensure **security at every stage** through source code scanning, image scanning, runtime security, and performance testing.
- Provide a **reproducible and documented workflow** for containerized application deployment and orchestration.

## 3) What’s Included
- Project analysis  
- Containerized services: backend (.NET) + frontend (React) packaged with Docker  
- CI/CD with GitLab Runner: source code scan, build image, image scan, push to registry, deploy, runtime security scan, performance testing  
- Security gates: CodeClimate (code quality), Snyk (SCA), Arachni (DAST), K6 (performance)  
- Private image registry: Portus  
- Kubernetes cluster with dashboard, ingress, CI/CD integration, and autoscaling  
- Kubernetes ingress and load balancing

## 4) Milestones & Status (chronological)

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

- **Day 4 (25/09/2025) — Kubernetes Cluster & Deployment Enhancements**  
  - [Kubernetes Cluster and Dashboard Setup](docs/kubernetes_node_and_dashboard_setup.md): Set up a high-availability (HA) Kubernetes cluster using Kubespray with 3 master nodes, integrated with Kubernetes Dashboard for web-based management.  
  - [Ingress Controller & Load Balancer Setup](docs/kubernetes_ingress_deployment.md): Deployed Ingress NGINX controller with NodePort configuration and external NGINX load balancer to distribute traffic across Kubernetes nodes.  
  - [Full-Stack App Deployment (Frontend + Backend)](docs/fullstack_k8s_deployment.md): Deployed a full-stack ecommerce application (React frontend and .NET backend) in the `online-shop` namespace, integrated with a private Portus registry and Cloudflare DNS.  
  - [CI/CD Pipeline on Kubernetes with GitLab Runner](docs/k8s-cicd.md): Configured GitLab Runner (shell executor) to automate building, pushing, and deploying container images to the Kubernetes cluster, with dynamic image tag updates in manifests.  
  - [Horizontal Pod Autoscaling (HPA)](docs/autoscale-pod.md): Implemented metrics-server and HPA to dynamically scale the backend based on CPU utilization (50% threshold, 1-3 replicas).  
  - **Status:** ✅ Completed 25/09/2025  

## 5) Architecture at a Glance

### CI/CD and Security Pipeline
- Developer pushes code with tags → **Source code scan (CodeClimate, Snyk)** for quality and vulnerabilities.
- CI/CD pipeline (GitLab Runner) runs **build** → generates Docker images for frontend (React) and backend (.NET).
- Images undergo **security scans (Trivy)** before being pushed to **Portus** (private registry).
- **Deploy** stage updates Kubernetes manifests with dynamic image tags and applies them to the cluster.
- Running application is tested with **DAST (Arachni)** for web vulnerabilities and **runtime scans** for ongoing security.
- **Performance tests (k6)** evaluate application behavior under load (smoke, stress, soak tests).

### Kubernetes Architecture
- **Cluster Setup**: High-availability Kubernetes cluster (3 master nodes) deployed via Kubespray, with `metrics-server` for resource monitoring and Kubernetes Dashboard for web-based management.
- **Networking**: Ingress NGINX controller routes traffic based on hostnames (`online-shop.mtritran.click` for frontend, `api-online-shop.mtritran.click` for backend) via NodePort (31080/31443) and an external NGINX load balancer.
- **Application Deployment**: Frontend and backend run in the `online-shop` namespace, with private registry integration (`auth-registry` secret) for secure image pulls.
- **Autoscaling**: Horizontal Pod Autoscaler (HPA) scales backend pods (1-3 replicas) based on 50% CPU utilization, ensuring efficient resource usage.
- **DNS**: Cloudflare DNS resolves hostnames to the load balancer’s static IP for seamless access.

## 6) Tech Stack and Infrastructure:
- **Hosting**: Google Cloud Platform (GCP).
- **Source & CI/CD:** GitLab, GitLab Runner  
- **Containers:** Docker (backend .NET 6, frontend React)  
- **Registry:** Portus (private registry)  
- **Kubernetes:** Kubespray HA cluster (release-2.24), Dashboard, Ingress-NGINX, HPA  
- **Security Gates:** CodeClimate, Snyk, Arachni  
- **Performance:** k6  

## 7) Best Practices
- **Security**:
  - Use RBAC and least-privilege ServiceAccounts for cluster access.
  - Store credentials in GitLab CI/CD masked variables and Kubernetes secrets.
  - Implement network policies to restrict traffic within the cluster.
- **Scalability**:
  - Configure HPA for dynamic pod scaling based on resource usage.
  - Use multi-replica deployments for high availability.
  - Monitor resource utilization with `metrics-server` and Kubernetes Dashboard.
- **Operations**:
  - Regularly back up etcd for cluster state persistence.
  - Implement logging and monitoring for application and cluster health.
  - Plan for rolling updates and cluster maintenance to minimize downtime.

## 8) How to Review
- **Day 1 Deliverables**: Review [Dockerized deployment](docs/deploy-project-with-docker.md) for initial container setup.
- **Day 2–3 Deliverables**: Check [GitLab setup](docs/gitlab-and-runner-setup.md), [Portus setup](docs/portus-setup.md), and [DevSecOps pipeline](docs/build-scan-push-deploy.md) for CI/CD and security scanning processes.
- **Day 4 Deliverables**:
  - [Kubernetes Cluster and Dashboard Setup](docs/kubernetes_node_and_dashboard_setup.md): Verify HA cluster setup and access the Kubernetes Dashboard.
  - [Ingress Controller & Load Balancer Setup](docs/kubernetes_ingress_deployment.md): Confirm Ingress NGINX and external load balancer functionality.
  - [Full-Stack App Deployment](docs/fullstack_k8s_deployment.md): Test frontend (`http://online-shop.mtritran.click`) and backend (`http://api-online-shop.mtritran.click/swagger/index.html`).
  - [CI/CD Pipeline on Kubernetes](docs/k8s-cicd.md): Review pipeline logs for automated image builds and deployments.
  - [Horizontal Pod Autoscaling](docs/autoscale-pod.md): Check HPA behavior under CPU load using `kubectl top pods` and `kubectl get hpa`.
- **Pipeline Configs & Reports**:
  - Source code scanning: [pipeline/scan-source-code.yml](docs/pipeline/scan-source-code.yml)
  - Build/Scan/Push/Deploy: [pipeline/build-scan_image-push-deploy.yml](docs/pipeline/build-scan_image-push-deploy.yml)
  - Runtime and performance testing: [pipeline/runtime-performance-testing.yml](docs/pipeline/runtime-performance-testing.yml)
- **Kubernetes Resources**:
  - Review manifests in [docs/manifest/](docs/manifest/) for deployments, services, and ingress.
  - Check secrets (`auth-registry`) and HPA configuration in the `online-shop` namespace.
- **Results and Artifacts**:
  - Browse screenshots in `docs/screenshots/` for evidence of successful deployments, pipeline runs, and dashboard access.
  - Review reports: Snyk (HTML), Trivy FS, CodeClimate, and k6 CSV summaries (smoke/load/stress/soak).