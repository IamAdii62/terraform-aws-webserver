resource "aws_security_group" "web_sg" {
  name = "terraform-web-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web_server" {
  ami                    = "ami-073130f74f5ffb161"
  instance_type          = var.instance_type
  key_name               = "devops"

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  associate_public_ip_address = true   # MOST IMPORTANT LINE

  user_data = <<-EOF
#!/bin/bash
apt update -y
apt install nginx -y

cat <<HTML > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Terraform DevOps Project</title>
<style>
body {
  margin: 0;
  font-family: 'Segoe UI', Arial, sans-serif;
  background: linear-gradient(135deg, #0f2027, #203a43, #2c5364);
  color: white;
  text-align: center;
}

.container {
  padding: 100px 20px;
}

h1 {
  font-size: 48px;
  margin-bottom: 20px;
}

p {
  font-size: 20px;
  margin: 10px 0;
}

.tech {
  margin-top: 30px;
  font-size: 18px;
  letter-spacing: 1px;
}

.footer {
  position: fixed;
  bottom: 15px;
  width: 100%;
  font-size: 14px;
  opacity: 0.8;
}
</style>
</head>
<body>

<div class="container">
  <h1>🚀 Terraform Deployed Web Server</h1>
  <p>Provisioned using Infrastructure as Code on AWS</p>

  <div class="tech">
    EC2 | Security Groups | Nginx | User Data Automation
  </div>

  <p style="margin-top:40px;"><strong>Built by Aditi 💻</strong></p>
</div>

<div class="footer">
  Powered by Terraform • AWS • DevOps
</div>

</body>
</html>
HTML

systemctl start nginx
systemctl enable nginx
EOF

  tags = {
    Name = "Terraform-Web-Server"
  }
}