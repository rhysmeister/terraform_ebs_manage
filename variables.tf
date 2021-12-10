variable "ami" {
    description = "The ami to use"
    type        = string
    default     = "ami-02241e4f36e06d650"
}

variable "ssh_key_default" {
    description = "Default ssh key"
    type        = string
    default     = "tf_key"
}