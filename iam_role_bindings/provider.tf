provider "google" {
  region      = "europe-west1"
  credentials = file("../tf_sa/key.json") 
}
