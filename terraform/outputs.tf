output "alb_dns_name" {
  description = "DNS name of the Load Balancer (Access your app here)"
  value       = aws_lb.main.dns_name
}

output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.app.id
}
