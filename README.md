# Shiny + Google Cloud Run + Terraform 

---

The main objective of this repository is to serve as a cookiecutter to
other projects that will use the following:
 - Automation of image build and push to a Private Container Registry, 
GCR in this project;
   
 - Containerization of an R Shiny Web Application and further customization
of the shiny server configuration files to disable a few websockets not 
   supported by Google Cloud Run;
     
 - Deployment of a Google Cloud Run service through Infrastructure as Code
techniques such as terraform;
   
---

This is still a work in project.