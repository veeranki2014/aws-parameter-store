resource "aws_ssm_parameter" "param" {
  count       = length(var.params)
  name        = var.params[count.index].name
  type        = var.params[count.index].type
  value       = var.params[count.index].value
  overwrite   = true
  key_id      = "99a36c85-491f-4308-9f5a-a20587017b99"
}

variable "params" {
  default = [
    { name = "roboshop.dev.frontend.catalogue_url", value = "http://catalogue-dev.veerankitek.com/", type = "String" },
    { name = "roboshop.dev.frontend.user_url", value = "http://user-dev.veerankitek.com/", type = "String" },
    { name = "roboshop.dev.frontend.cart_url", value = "http://cart-dev.veerankitek.com/", type = "String" },
    { name = "roboshop.dev.frontend.payment_url", value = "http://payment-dev.veerankitek.com/", type = "String" },
    { name = "roboshop.dev.frontend.shipping_url", value = "http://shipping-dev.veerankitek.com/", type = "String" },

    #{ name = "roboshop.dev.cart.redis_host", value = "redis-dev.veerankitek.com", type = "String" },
    { name = "roboshop.dev.cart.redis_host", value = "elasticache-dev.fzjo92.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.dev.cart.catalogue_host", value = "catalogue-dev.veerankitek.com", type = "String" },
    //{ name = "roboshop.dev.cart.catalogue_port", value = "8080", type = "String" },
    { name = "roboshop.dev.cart.catalogue_port", value = "80", type = "String" },

    { name = "roboshop.dev.catalogue.mongo", value = "true", type = "String" },
    //{ name = "roboshop.dev.catalogue.mongo_url", value = "mongodb://mongodb-dev.veerankitek.com:27017/catalogue", type = "String" },


    { name = "roboshop.dev.payment.cart_host", value = "cart-dev.veerankitek.com", type = "String" },
    { name = "roboshop.dev.payment.cart_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.user_host", value = "user-dev.veerankitek.com", type = "String" },
    { name = "roboshop.dev.payment.user_port", value = "80", type = "String" },
    { name = "roboshop.dev.payment.amqp_host", value = "rabbitmq-dev.veerankitek.com", type = "String" },
    { name = "roboshop.dev.payment.amqp_user", value = "roboshop", type = "String" },

    { name = "roboshop.dev.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.dev.shipping.cart_endpoint", value = "cart-dev.veerankitek.com:80", type = "String" },
    { name = "roboshop.dev.shipping.db_host", value = "rds-dev.cluster-cx8kkrzk6cpv.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "roboshop.dev.user.mongo", value = "true", type = "String" },
    { name = "roboshop.dev.user.redis_host", value = "elasticache-dev.fzjo92.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.dev.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.dev.mysql.endpoint", value = "rds-dev.cluster-cx8kkrzk6cpv.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "roboshop.dev.docdb.username", value = "roboshop", type = "String" },




    ### passwords will be never part of git repos, usually in organizations we create them manually, whom ever have access can provision them
    { name = "roboshop.prod.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cx8kkrzk6cpv.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.prod.catalogue.docdb_endpoint", value = "docdb-prod.cluster-cx8kkrzk6cpv.us-east-1.docdb.amazonaws.com", type = "String" },

    { name = "roboshop.prod.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cx8kkrzk6cpv.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.prod.user.docdb_endpoint", value = "docdb-prod.cluster-cx8kkrzk6cpv.us-east-1.docdb.amazonaws.com", type = "String" },



    //{ name = "roboshop.prod.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    //{ name = "roboshop.prod.catalogue.docdb_endpoint", value = "docdb-prod.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com", type = "String" },
    //{ name = "roboshop.prod.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    //{ name = "roboshop.prod.user.docdb_endpoint", value = "docdb-prod.cluster-cbvsbeoyxek4.us-east-1.docdb.amazonaws.com", type = "String" },




    ######## PROD ENVIRONMENT VARIABLES #######################
    { name = "roboshop.prod.frontend.catalogue_url", value = "http://catalogue-prod.veerankitek.com/", type = "String" },
    { name = "roboshop.prod.frontend.user_url", value = "http://user-prod.veerankitek.com/", type = "String" },
    { name = "roboshop.prod.frontend.cart_url", value = "http://cart-prod.veerankitek.com/", type = "String" },
    { name = "roboshop.prod.frontend.payment_url", value = "http://payment-prod.veerankitek.com/", type = "String" },
    { name = "roboshop.prod.frontend.shipping_url", value = "http://shipping-prod.veerankitek.com/", type = "String" },

    #{ name = "roboshop.prod.cart.redis_host", value = "redis-prod.veerankitek.com", type = "String" },
    { name = "roboshop.prod.cart.redis_host", value = "elasticache-prod.fzjo92.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.prod.cart.catalogue_host", value = "catalogue-prod.veerankitek.com", type = "String" },
    //{ name = "roboshop.prod.cart.catalogue_port", value = "8080", type = "String" },
    { name = "roboshop.prod.cart.catalogue_port", value = "80", type = "String" },

    { name = "roboshop.prod.catalogue.mongo", value = "true", type = "String" },
    //{ name = "roboshop.prod.catalogue.mongo_url", value = "mongodb://mongodb-prod.veerankitek.com:27017/catalogue", type = "String" },


    { name = "roboshop.prod.payment.cart_host", value = "cart-prod.veerankitek.com", type = "String" },
    { name = "roboshop.prod.payment.cart_port", value = "80", type = "String" },
    { name = "roboshop.prod.payment.user_host", value = "user-prod.veerankitek.com", type = "String" },
    { name = "roboshop.prod.payment.user_port", value = "80", type = "String" },
    { name = "roboshop.prod.payment.amqp_host", value = "rabbitmq-prod.veerankitek.com", type = "String" },
    { name = "roboshop.prod.payment.amqp_user", value = "roboshop", type = "String" },

    { name = "roboshop.prod.rabbitmq.amqp_user", value = "roboshop", type = "String" },
    { name = "roboshop.prod.shipping.cart_endpoint", value = "cart-prod.veerankitek.com:80", type = "String" },
    { name = "roboshop.prod.shipping.db_host", value = "rds-prod.cluster-cx8kkrzk6cpv.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "roboshop.prod.user.mongo", value = "true", type = "String" },
    { name = "roboshop.prod.user.redis_host", value = "elasticache-prod.fzjo92.clustercfg.use1.cache.amazonaws.com", type = "String" },
    { name = "roboshop.prod.mysql.username", value = "roboshop", type = "String" },
    { name = "roboshop.prod.mysql.endpoint", value = "rds-prod.cluster-cx8kkrzk6cpv.us-east-1.rds.amazonaws.com", type = "String" },
    { name = "roboshop.prod.docdb.username", value = "roboshop", type = "String" },




    ### passwords will be never part of git repos, usually in organizations we create them manually, whom ever have access can provision them
    { name = "roboshop.prod.payment.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.rabbitmq.amqp_pass", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.mysql.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.docdb.password", value = "roboshop123", type = "SecureString" },
    { name = "roboshop.prod.catalogue.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cx8kkrzk6cpv.us-east-1.docdb.amazonaws.com:27017/catalogue?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.prod.catalogue.docdb_endpoint", value = "docdb-prod.cluster-cx8kkrzk6cpv.us-east-1.docdb.amazonaws.com", type = "String" },

    { name = "roboshop.prod.user.mongo_url", value = "mongodb://roboshop:roboshop123@docdb-prod.cluster-cx8kkrzk6cpv.us-east-1.docdb.amazonaws.com:27017/users?tls=true&replicaSet=rs0&readPreference=secondaryPreferred&retryWrites=false", type = "SecureString" },
    { name = "roboshop.prod.user.docdb_endpoint", value = "docdb-prod.cluster-cx8kkrzk6cpv.us-east-1.docdb.amazonaws.com", type = "String" },

  ]

}