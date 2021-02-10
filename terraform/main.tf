resource "google_project_service" "run" {
  service = "run.googleapis.com"
}

resource "google_cloud_run_service" "shiny-gcr-tf" {
  name = "shiny-gcr-tf"
  location = "us-central1"

  template {
    spec {
      containers {
        image = "gcr.io/lhzpaese/shiny_gcr_tf:edge"
        resources {
          limits = {
            cpu = "1000m"
            memory = "1024Mi"
          }
        }
        ports {
          container_port = 80
        }
      }

      container_concurrency = 80
      timeout_seconds = 300
    }
    metadata {
      annotations = {
        "autoscaling.knative.dev/minScale" = 0
        "autoscaling.knative.dev/maxScale" = 10
      }
    }
  }

  traffic {
    percent = 100
    latest_revision = true
  }

  depends_on = [google_project_service.run]
}

resource "google_cloud_run_service_iam_member" "allUsers" {
  service  = google_cloud_run_service.shiny-gcr-tf.name
  location = google_cloud_run_service.shiny-gcr-tf.location
  role     = "roles/run.invoker"
  member   = "allUsers"
}