

With this code you can to set up a dynamic AWS Autoscaling Group and Load Balancer with Autoscaling Scaling Policy Resource 
and a Dynamic Scaling Policy to distribute traffic to your instances in several Availability Zones.



Steps:  <br>
    **Setting up VPC**
    <ol> 
        <li> aws_vpc  </li>
        <li>aws_subnet</li>
        <li>aws_internet_gateway</li>
        <li>aws_route_table</li>
        <li>aws_route_table_association</li>
        <li>aws_security_group</li>
    </ol>
    **Launch configuration** <br>
    <ol>
    <li> aws_launch_configuration  </li>
    </ol>
    **Load balancer**
    <ol>
    <li> aws_security_group  </li>
    <li> aws_elb (Used only for simplicity, but is not the better option)  </li>
    </ol>
    Auto Scaling group\
        aws_autoscaling_group\
    Auto scaling policies\
        # First, let’s determine how AWS need to scale our group UP by declaring aws_autoscaling_policy and aws_cloudwatch_metric_alarm resources\
        # aws_autoscaling_policy defines how AWS should change Auto Scaling Group’s newly launched instance count will add a positive increment,\
        # contribute and defines cloudwatch metrics in its current desired capacity in case of aws_cloudwatch_metric_alarm.\
        aws_autoscaling_policy\
        aws_cloudwatch_metric_alarm\
    Auto Scaling Group down
        aws_autoscaling_policy
        aws_cloudwatch_metric_alarm


Note: used as reference https://hands-on.cloud/terraform-recipe-managing-auto-scaling-groups-and-load-balancers/ 
