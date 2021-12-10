resource "aws_instance" "instance-one" {
    ami           = var.ami
    instance_type = "t2.micro"
    key_name      = var.ssh_key_default
    subnet_id     = aws_subnet.subnet1.id

    ebs_block_device {
        device_name = "/dev/sda1"
        volume_size = 10
        volume_type = "gp2"
    }

    tags = {
        Name = "instance-one"
    }
}

resource "aws_instance" "instance-two" {
    ami           = var.ami
    instance_type = "t2.micro"
    key_name      = var.ssh_key_default
    subnet_id     = aws_subnet.subnet1.id

    ebs_block_device {
        device_name = "/dev/sda1"
        volume_size = 10
        volume_type = "gp2"
    }

    lifecycle {
        ignore_changes = [ebs_block_device]
    }

    tags = {
        Name = "instance-two"
    }
}

resource "aws_instance" "instance-three" {
    ami           = var.ami
    instance_type = "t2.micro"
    key_name      = var.ssh_key_default
    subnet_id     = aws_subnet.subnet1.id

    root_block_device {
        volume_size = 10
        volume_type = "gp2"
    }

    ebs_block_device {
        device_name = var.additional_volume_name
        volume_size = 10
        volume_type = "gp2"
    }

    tags = {
        Name = "instance-three"
    }
}

resource "aws_instance" "instance-four" {
    ami           = var.ami
    instance_type = "t2.micro"
    key_name      = var.ssh_key_default
    subnet_id     = aws_subnet.subnet1.id

    root_block_device {
        volume_size = 10
        volume_type = "gp2"
    }

    ebs_block_device {
        device_name = var.additional_volume_name
        volume_size = 10
        volume_type = "gp2"
    }

    lifecycle {
        ignore_changes = [ebs_block_device, root_block_device]
    }

    tags = {
        Name = "instance-three"
    }
}