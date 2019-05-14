# Cloud Run Puppeteer

This is a sample repository for running puppeteer on cloud run.

## Prerequisite

```bash
gcloud components update
gcloud components install beta
gcloud config set run/region us-central1
```

## Get Started

```bash
docker build -t gcr.io/${GCP_PROJECT}/cloud-run-puppeteer:latest .
docker push gcr.io/${GCP_PROJECT}/cloud-run-puppeteer:latest
gcloud beta run deploy --memory 512Mi --project ${GCP_PROJECT} --image gcr.io/${GCP_PROJECT}/cloud-run-puppeteer
# Please open with url output to console
# open https://cloud-run-puppeteer-${digest}.a.run.app/?url=https://google.com
```
