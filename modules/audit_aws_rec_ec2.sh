# audit_aws_rec_ec2
#
# Ensure that all your Amazon Machine Images (AMIs) are using suitable naming
# conventions for tagging in order to manage them more efficiently and adhere
# to AWS resource tagging best practices. A naming convention is a well-defined
# set of rules useful for choosing the name of an AWS resource.
#
# Refer to https://www.cloudconformity.com/conformity-rules/EC2/ami-naming-conventions.html
#
# Ensure that all the AWS EC2 instances necessary for your application stack are
# launched from your approved base Amazon Machine Images (AMIs), known as golden
# AMIs in order to enforce consistency and save time when scaling your
# application.
#
# An approved/golden AMI is a base EC2 machine image that contains a
# pre-configured OS and a well-defined stack of server software fully configured
# to run your application. Using golden AMIs to create new EC2 instances within
# your AWS environment brings major benefits such as fast and stable application
# deployment and scaling, secure application stack upgrades and versioning.
#
# Refer to https://www.cloudconformity.com/conformity-rules/EC2/approved-golden-amis.html
#
# Ensure that all your EC2 instances are using suitable naming conventions for
# tagging in order to manage them more efficiently and adhere to AWS resource
# tagging best practices. A naming convention is an established set of rules
# useful for choosing the name of an AWS resource
#
# Naming (tagging) your EC2 instances logically and consistently has several
# advantages such as providing additional information about the instance
# location and usage, promoting consistency within the selected environment,
# distinguishing fast similar resources from one another, improving clarity
# in cases of potential ambiguity and classifying them accurately as compute
# resources for easy management and billing purposes.
#
# Refer to https://www.cloudconformity.com/conformity-rules/EC2/ec2-instance-naming-conventions.html
#
# Ensure that the EC2 instances provisioned outside of the AWS Auto Scaling
# Groups (ASGs) have Termination Protection safety feature enabled in order
# to protect your instances from being accidentally terminated.
#
# For EC2 instances provisioned manually, once the Termination Protection
# feature is enabled you will not be able to terminate your EC2 instances
# using the AWS Management Console, the AWS API or the CLI until the
# termination protection has been disabled. However, this will not prevent
# your instances from getting terminated if these have set the Shutdown
# Behavior flag to 'Terminate' when an OS-level shutdown is performed.
# To make sure your instances cannot be accidentally terminated, you need
# to set first the instance Shutdown Behavior value to 'Stop' (which sets
# the InstanceInitiatedShutdownBehavior attribute value to 'stop') then
# enable Termination Protection safety precaution (which sets the
# DisableApiTermination attribute value to true).
#
# For EC2 instances provisioned automatically via AWS Cloudformation, once the
# Termination Protection feature is enabled you will not be able to delete the
# stack containing the instance until the feature has been disabled (which sets
# the DisableApiTermination attribute value to false) in your CloudFormation
# template.
#
# By default, the volumes associated with the EC2 instances are deleted when
# these are terminated (the DeletionOnTermination attribute value is set to
# true). With Termination Protection feature enabled, you have the guarantee
# that your instances cannot be terminated (permanently deleted) accidentally
# and make sure that your EBS data remains safe.
#
# Refer to https://www.cloudconformity.com/conformity-rules/EC2/ec2-instance-termination-protection.html
#
# Ensure that all your EC2 security groups are using appropriate naming
# conventions for tagging in order to manage them more efficiently and adhere
# to AWS tagging best practices. A naming convention is a well-defined set of
# rules useful for choosing the name of an AWS resource.  
#
# Naming your AWS resources logically and consistently has several advantages
# such as providing additional information about the resource location and
# usage, promoting consistency within the selected environment, distinguishing
# fast similar resources from one another, avoiding naming collisions, improving
# clarity in cases of potential ambiguity and enhancing the aesthetic and
# professional appearance.
# 
# Refer to https://www.cloudconformity.com/conformity-rules/EC2/security-group-naming-conventions.html
#
# Ensure that all your AWS EBS volumes are using proper naming conventions for
# tagging in order to manage them more efficiently and adhere to AWS resource
# tagging best practices. A naming convention is a well-defined set of rules
# useful for choosing the name of an AWS resource.
#
# Naming (tagging) your AWS EBS volumes logically and consistently has several
# advantages such as providing additional information about the volume location
# and usage, promoting consistency within the selected environment,
# distinguishing fast similar resources from one another, avoiding naming
# collisions, improving clarity in cases of potential ambiguity and enhancing
# the aesthetic and professional appearance.
#
# Refer to https://www.cloudconformity.com/conformity-rules/EBS/ebs-naming-conventions.html
#
# Ensure that your EC2 instances are using General Purpose SSD (gp2) EBS volumes
# instead of Provisioned IOPS SSD (io1) volumes for cost-effective storage that
# fits a broad range of workloads. Unless you are running mission-critical
# applications that need more than 10000 IOPS or 160 MiB/s of throughput per
# volume.
#
# Using General Purpose SSD (gp2) volumes instead of Provisioned IOPS SSD (io1)
# volumes represents a good strategy to cut down on EBS costs because for
# gp2-type volumes you only pay for the storage compared to io1 volumes where
# you pay for both storage and IOPS. Converting existing io1 resources to gp2
# is often possible by configuring larger storage which gives higher baseline
# performance of IOPS for a lower cost.
#
# Refer to https://www.cloudconformity.com/conformity-rules/EBS/general-purpose-ssd-volume.html
#
# Check for any AWS EBS snapshots older than 30 days available within your AWS
# account and remove them in order to lower the cost of your monthly bill.
# The threshold for the retention period is 30 days, which means that all
# incremental snapshots older than 30 days should be deleted.
#
# With an active EBS backup strategy that takes volume snapshots daily or
# weekly, your data can grow rapidly and add unexpected charges to your bill.
# Since AWS EBS volumes snapshots are incremental, deleting previous (older)
# snapshots do not affect the ability to restore the volume data from later
# snapshots which allows you keep just the necessary backup data and lower
# your AWS monthly costs.
#
# Refer to https://www.cloudconformity.com/conformity-rules/EBS/ebs-volumes-too-old-snapshots.html
#
# Identify any unattached (unused) Elastic Block Store (EBS) volumes available
# in your AWS account and remove them in order to lower the cost of your monthly
# AWS bill and reduce the risk of confidential/sensitive data leaving your
# premise.
#
# Any Elastic Block Store volume created in your AWS account is adding charges
# to your monthly bill, regardless whether is being used or not. If you have
# EBS volumes (other than root volumes) that are unattached to an EC2 instance
# or have very low I/O activity, consider deleting them. Removing unattached/
# orphaned Elastic Block Store volumes will help you avoid unexpected charges
# on your AWS bill and halt access to any sensitive data available on these
# volumes.
#
# Refer to https://www.cloudconformity.com/conformity-rules/EBS/unused-ebs-volumes.html
#
# Ensure that your EBS volumes (available or in-use) have recent snapshots
# (taken weekly) available for point-in-time recovery for a better, more
# reliable data backup strategy. The threshold for the time frame between the
# volume snapshots is 7 days, meaning there should be a snapshot taken at
# least every 7 days.
#
# Creating point-in-time EBS snapshots periodically will allow you to handle
# efficiently your data recovery process in the event of a failure, to save
# your data before shutting down an EC2 instance, to back up data for
# geographical expansion and to maintain your disaster recovery stack up to
# date.
#
# Refer to https://www.cloudconformity.com/conformity-rules/EBS/ebs-volumes-recent-snapshots.html
#.

audit_aws_rec_ec2 () {
  volumes=`aws ec2 describe-volumes --region $aws_region --query 'Volumes[].VolumeId' --output text`
  for volume in $volumes; do
    # Check that EC2 volumes are using cost effective storage
    total=`expr $total + 1`
    check=`aws ec2 describe-volumes --region $aws_region --volume-id $volume --query 'Volumes[].State' --output text`
    if [ ! "$check" = "available" ]; then
      secure=`expr $secure + 1`
      echo "Pass:      EC2 volume $volume is attached to an instance [$secure Passes]"
    else
      insecure=`expr $insecure + 1`
      echo "Warning:   EC2 volume $volume is not attached to an instance [$insecure Warnings]"
    fi
    # Check for EC2 volumes that are unattached
    total=`expr $total + 1`
    check=`aws ec2 describe-volumes --region $aws_region --volume-id $volume --query 'Volumes[].VolumeType' |grep "gp2"`
    if [ "$check" ]; then
      secure=`expr $secure + 1`
      echo "Pass:      EC2 volume $volume is using General Purpose SSD [$secure Passes]"
    else
      insecure=`expr $insecure + 1`
      echo "Warning:   EC2 volume $volume is not using General Purpose SSD [$insecure Warnings]"
    fi
  done
  # Check date of snapshots
  arn=`aws iam get-user --query "User.Arn" --output text |cut -f5 -d:`
  snapshots=`aws ec2 describe-snapshots --region $aws_region --owner-ids $arn --filters Name=status,Values=completed --query "Snapshots[].SnapshotId" --output text`
  counter=0
  for snapshot in $snapshots; do
    total=`expr $total + 1`
    snap_date=`aws ec2 describe-snapshots --region $aws_region --snapshot-id $snapshot --query "Snapshots[].StartTime" --output text --output text |cut -f1 -d.`
    snap_secs=`date -j -f "%Y-%m-%dT%H:%M:%S" "$snap_date" "+%s"`
    curr_secs=`date "+%s"`
    diff_days=`echo "($curr_secs - $snap_secs)/84600" |bc`
    if [ "$diff_days" -gt "$aws_ec2_max_retention" ]; then
      insecure=`expr $insecure + 1`
      echo "Warning:   EC2 snapshot $snapshot is more than $aws_ec2_max_retention days old [$insecure Warnings]"
    else
      secure=`expr $secure + 1`
      echo "Pass:      EC2 snapshot $snapshot is less than $aws_ec2_max_retention days old [$secure Passes]"
    fi
    if [ "$diff_days" -gt "$aws_ec2_min_retention" ]; then
      counter=`expr $counter + 1`
    fi
  done
  total=`expr $total + 1`
  if [ "$counter" -gt 0 ]; then
    secure=`expr $secure + 1`
    echo "Pass:      There are EC2 snapshots more than $aws_ec2_min_retention days old [$secure Passes]"
  else
    insecure=`expr $insecure + 1`
    echo "Warning:   There are no EC2 snapshots more than $aws_ec2_min_retention days old [$insecure Warnings]"
  fi
  # Check Security Groups have Name tags
  sgs=`aws ec2 describe-security-groups --region $aws_region --query 'SecurityGroups[].GroupName' --output text`
  for sg in $sgs; do
    if [ ! "$sg" = "default" ]; then
      total=`expr $total + 1`
      name=`aws ec2 describe-security-groups --region $aws_region --group-names $sg --query "SecurityGroups[].Tags[?Key==\\\`Name\\\`].Value" 2> /dev/null --output text`
      if [ ! "$name" ]; then
        insecure=`expr $insecure + 1`
        echo "Warning:   AWS Security Group $sg does not have a Name tag [$insecure Warnings]"
        funct_verbose_message "" fix
        funct_verbose_message "aws ec2 create-tags --region $aws_region --resources $image --tags Key=Name,Value=<valid_name_tag>" fix
        funct_verbose_message "" fix
      else
        check=`echo $name |grep "^sg-$valid_tag_string"`
        if [ "$check" ]; then
          secure=`expr $secure + 1`
          echo "Pass:      AWS Security Group $sg has a valid Name tag [$secure Passes]"
        else
          insecure=`expr $insecure + 1`
          echo "Warning:   AWS Security Group $sg does not have a valid Name tag [$insecure Warnings]"
        fi
      fi
    fi
  done
  # Check Volumes have Name tags
  volumes=`aws ec2 describe-volumes --region $aws_region --query "Volumes[].VolumeId" --output text`
  for volume in $volumes; do
    total=`expr $total + 1`
    name=`aws ec2 describe-volumes --region $aws_region --volume-id $volume --query "Volumes[].Tags[?Key==\\\`Name\\\`].Value" --output text`
    if [ ! "$name" ]; then
      insecure=`expr $insecure + 1`
      echo "Warning:   AWS EC2 volume $volume does not have a Name tag [$insecure Warnings]"
      funct_verbose_message "" fix
      funct_verbose_message "aws ec2 create-tags --region $aws_region --resources $volume --tags Key=Name,Value=<valid_name_tag>" fix
      funct_verbose_message "" fix
    else
      check=`echo $name |grep "^ami-$valid_tag_string"`
      if [ "$check" ]; then
        secure=`expr $secure + 1`
        echo "Pass:      AWS EC2 volume $olume has a valid Name tag [$secure Passes]"
      else
        insecure=`expr $insecure + 1`
        echo "Warning:   AWS EC2 volume $volume does not have a valid Name tag [$insecure Warnings]"
      fi
    fi
  done
  # Check AMIs have Name tags
  images=`aws ec2 describe-images --region $aws_region --owners self --query "Images[].ImageId" --output text`
  for image in $images; do
    total=`expr $total + 1`
	  name=`aws ec2 describe-images --region $aws_region --owners self --image-id $image --query "Images[].Tags[?Key==\\\`Name\\\`].Value" --output text`
    if [ ! "$name" ]; then
      insecure=`expr $insecure + 1`
      echo "Warning:   AWS AMI $image does not have a Name tag [$insecure Warnings]"
      funct_verbose_message "" fix
      funct_verbose_message "aws ec2 create-tags --region $aws_region --resources $image --tags Key=Name,Value=<valid_name_tag>" fix
      funct_verbose_message "" fix
    else
      check=`echo $name |grep "^ami-$valid_tag_string"`
      if [ "$check" ]; then
        secure=`expr $secure + 1`
        echo "Pass:      AWS AMI $image has a valid Name tag [$secure Passes]"
      else
        insecure=`expr $insecure + 1`
        echo "Warning:   AWS AMI $image does not have a valid Name tag [$insecure Warnings]"
      fi
    fi
  done
  # Check Instances have Name tags
  instances=`aws ec2 describe-instances --region $aws_region --query "Reservations[].Instances[].InstanceId" --output text`
  for instance in $instances; do
    for tag in Name Role Environment Owner; do
      total=`expr $total + 1`
      check=`aws ec2 describe-instances --region $aws_region --instance-id $instance --query "Reservations[].Instances[].Tags[?Key==\\\`$tag\\\`].Value" --output text`
      if [ ! "$check" ]; then
        insecure=`expr $insecure + 1`
        echo "Warning:   AWS AMI $image does not have a $tag tag [$insecure Warnings]"
        funct_verbose_message "" fix
        funct_verbose_message "aws ec2 create-tags --region $aws_region --resources $instance --tags Key=$tag,Value=<valid_name_tag>" fix
        funct_verbose_message "" fix
      else
        check=`echo $name |grep "^ec2-$valid_tag_string"`
        if [ "$check" ]; then
          secure=`expr $secure + 1`
          echo "Pass:      AWS Instance $instance has a valid $tag tag [$secure Passes]"
        else
          insecure=`expr $insecure + 1`
          echo "Warning:   AWS Instance $instance does not have a valid $tag tag [$insecure Warnings]"
        fi
      fi
    done
    total=`expr $total + 1`
    term_check=`aws ec2 describe-instance-attribute --region $aws_region --instance-id $instance --attribute disableApiTermination --query "DisableApiTermination" |grep true`
    asg_check=`aws autoscaling describe-auto-scaling-instances --region $aws_region --query 'AutoScalingInstances[].InstanceId' |grep $instance`
    if [ "$term_check" ] && [ ! "$asg_check" ]; then
      secure=`expr $secure + 1`
      echo "Pass:      Termination Protection is enabled for instance $instance [$secure Passes]"
    else
      insecure=`expr $insecure + 1`
      echo "Warning:   Termination Protection is not enabled for instance $instance [$insecure Warnings]"
    fi
  done
  # Check Instances are from self produced images
  images=`aws ec2 describe-instances --region $aws_region --query 'Reservations[].Instances[].ImageId' --output text`
  for image in $images; do
    total=`expr $total + 1`
    owner=`aws ec2 describe-images --region $aws_region --image-ids $image --query 'Images[].ImageOwnerAlias' --output text`
    if [ "$owner" = "self" ] || [ ! "$owner" ]; then
      secure=`expr $secure + 1`
      echo "Pass:      AWS AMI $image is a self produced image [$secure Passes]"
    else
      insecure=`expr $insecure + 1`
      echo "Warning:   AWS AMI $image is not have a valid Name tag [$insecure Warnings]"
    fi
  done
  total=`expr $total + 1`
  # Check number of Elastic IPs that are being used
  max_ips=`aws ec2 describe-account-attributes --region $aws_region --attribute-names max-elastic-ips --query "AccountAttributes[].AttributeValues[].AttributeValue" --output text`
  no_ips=`aws ec2 describe-addresses --region $aws_region --query 'Addresses[].PublicIp' --filters "Name=domain,Values=standard" --output text |wc -l`
  if [ "$max_ips" -ne  "$no_ips" ]; then
    secure=`expr $secure + 1`
    echo "Pass:      Number of Elastic IPs consumed is less than limit of $max_ips [$secure Passes]"
  else
    insecure=`expr $insecure + 1`
    echo "Warning:   Number of Elastic IPs consumed has reached limit of $max_ips [$insecure Warnings]"
  fi
  # Check Instances are using EC2-VPC and not EC2-Classic
  instances=`aws ec2 describe-instances --region $aws_region --query 'Reservations[*].Instances[*].InstanceId' --output text`
  for instance in $instances; do
    total=`expr $total + 1`
    vpc_id=`aws ec2 describe-instances --region $aws_region --instance-ids $instance --query 'Reservations[*].Instances[*].VpcId' --output text`
    if [ "$vpc_id" ]; then
      secure=`expr $secure + 1`
      echo "Pass:      Instance $instance is an EC2-VPC platform [$secure Passes]"
    else
      insecure=`expr $insecure + 1`
      echo "Warning:   Instance $instance is an EC2-Classic platform [$insecure Warnings]"
    fi 
  done
}

