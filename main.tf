resource "aws_ssm_parameter" "param" {
  count = length(var.params)
  name = var.params[count.index].name
  type = var.params[count.index].type
  value = var.params[count.index].value
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.veerankitek.com:8080/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.veerankitek.com:8080/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.veerankitek.com:8080/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.veerankitek.com:8080/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.veerankitek.com:8080/", type = "String" },

    { name = "roboshop.dev.cart.redis_host", value = "redis-dev.veerankitek.com", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.veerankitek.com", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },

    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.veerankitek.com:27017/catalogue", type = "String" },

    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.veerankitek.com", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.veerankitek.com", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "8080", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.veerankitek.com", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.veerankitek.com:8080", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "mysql-dev.veerankitek.com", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.mongo_url", value = "mongodb://mongodb-dev.veerankitek.com:27017/users", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "redis-dev.veerankitek.com", type = "String" },
    { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },



    ### passwords will be never part of git repos, usually in organizations we create them manually, whom ever have access can provision them
    { name = "roboshop.dev.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.dev.mysql.password", value = "roboshop123", type = "SecureString" }

  ]

}