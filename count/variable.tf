variable "instances" {
    default = ["mysql", "backend", "forntend"]
}

variable "common_tags" {
  type        = map
  default     = {
Project = "expense"
Environment = "dev"
  }
}
