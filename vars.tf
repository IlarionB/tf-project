variable region {
  type        = string
  default = "eu-west-1"
}

variable AMIS {
  type        = map(string)
  default     =     {
    "eu-west-1" = "ami-0c1bebf6df0bafa23"
    "us-east-1" = "ami-072d6c9fae3253f26"
    "eu-central-1" = "ami-0872f26db03af5118"
    "us-west-1" = "ami-0ff4dd898acfb0e67"
  }
}

