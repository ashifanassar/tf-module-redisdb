resource "aws_route53_record" "redis" {
  zone_id = "Z0547409165EGAKUG3EH3"
  name    = "redis-${var.ENV}.roboshopshopping"
  type    = "CNAME"
  ttl     = 10
  records = [aws_elasticache_cluster.redis.cache_nodes.0.address]
}

output "REDIS_ENDPOINT" {
    value  = aws_elasticache_cluster.redis
}