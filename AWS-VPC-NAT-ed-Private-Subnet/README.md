

Instances launched in this subnet will be able to communicate with any services within VPC and go to the Internet using the special AWS service NAT Gateway.

AWS recommends using this type of network if you’re running, for example, a public-facing web application and don’t want to make your back-end servers accessible publicly. A typical example is a multi-tier website, with web servers in a public subnet and database servers in a private subnet. You can set up security and routing so that the web servers can communicate with the database servers
