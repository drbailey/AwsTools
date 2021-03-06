###########################################$
#  Copyright 2008-2010 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#  Licensed under the Apache License, Version 2.0 (the "License"). You may not
#  use this file except in compliance with the License.
#  A copy of the License is located at
#
#      http://aws.amazon.com/apache2.0
#
#  or in the "license" file accompanying this file. This file is distributed on
#  an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
#  or implied. See the License for the specific language governing permissions
#  and limitations under the License.
###########################################$
#    __  _    _  ___
#   (  )( \/\/ )/ __)
#   /__\ \    / \__ \
#  (_)(_) \/\/  (___/
#
#  Amazon EC2 Perl Library
#  API Version: 2010-06-15
#  Generated: Wed Jul 21 13:37:54 PDT 2010
#



#
# Describe Security Groups  Sample
#

use strict;
use Carp qw( carp croak );

# this is only needed when samples are running from directory
# not included in the @INC path
use lib qw(../../../.);  


 #***********************************************************************
 # Access Key ID and Secret Acess Key ID, obtained from:
 # http://aws.amazon.com
 #**********************************************************************/
 
 my $AWS_ACCESS_KEY_ID        = "<Your Access Key ID>";
 my $AWS_SECRET_ACCESS_KEY    = "<Your Secret Access Key>";

 #***********************************************************************
 # Instantiate Http Client Implementation of EC2 
 #**********************************************************************/
 use Amazon::EC2::Client; 
 my $service = Amazon::EC2::Client->new($AWS_ACCESS_KEY_ID, $AWS_SECRET_ACCESS_KEY);
 
 #************************************************************************
 # Uncomment to try out Mock Service that simulates Amazon::EC2
 # responses without calling Amazon::EC2 service.
 #
 # Responses are loaded from local XML files. You can tweak XML files to
 # experiment with various outputs during development
 #
 # XML files available under Amazon/EC2/Mock tree
 #
 #**********************************************************************/
 # use Amazon::EC2::Mock;  
 # my $service = Amazon::EC2::Mock->new;

 #************************************************************************
 # Setup request parameters and uncomment invoke to try out 
 # sample for Describe Security Groups Action
 #**********************************************************************/
 use Amazon::EC2::Model::DescribeSecurityGroupsRequest;
 # @TODO: set request. Action can be passed as Amazon::EC2::Model::DescribeSecurityGroupsRequest
 # object or hash of parameters
 # invokeDescribeSecurityGroups($service, $request);

                                                                                                                                                                
    # 
    # Describe Security Groups Action Sample
    #
  sub invokeDescribeSecurityGroups {
      my ($service, $request) = @_;  
      eval {
              my $response = $service->describeSecurityGroups($request);
              
                print ("Service Response\n");
                print ("=============================================================================\n");

                print("        DescribeSecurityGroupsResponse\n");
                if ($response->isSetResponseMetadata()) { 
                    print("            ResponseMetadata\n");
                    my $responseMetadata = $response->getResponseMetadata();
                    if ($responseMetadata->isSetRequestId()) 
                    {
                        print("                RequestId\n");
                        print("                    " . $responseMetadata->getRequestId() . "\n");
                    }
                } 
                if ($response->isSetDescribeSecurityGroupsResult()) { 
                    print("            DescribeSecurityGroupsResult\n");
                    my $describeSecurityGroupsResult = $response->getDescribeSecurityGroupsResult();
                    my $securityGroupList = $describeSecurityGroupsResult->getSecurityGroup();
                    foreach (@$securityGroupList) {
                        my $securityGroup = $_;
                        print("                SecurityGroup\n");
                        if ($securityGroup->isSetOwnerId()) 
                        {
                            print("                    OwnerId\n");
                            print("                        " . $securityGroup->getOwnerId() . "\n");
                        }
                        if ($securityGroup->isSetGroupName()) 
                        {
                            print("                    GroupName\n");
                            print("                        " . $securityGroup->getGroupName() . "\n");
                        }
                        if ($securityGroup->isSetGroupDescription()) 
                        {
                            print("                    GroupDescription\n");
                            print("                        " . $securityGroup->getGroupDescription() . "\n");
                        }
                        my $ipPermissionList = $securityGroup->getIpPermission();
                        foreach (@$ipPermissionList) {
                            my $ipPermission = $_;
                            print("                    IpPermission\n");
                            if ($ipPermission->isSetIpProtocol()) 
                            {
                                print("                        IpProtocol\n");
                                print("                            " . $ipPermission->getIpProtocol() . "\n");
                            }
                            if ($ipPermission->isSetFromPort()) 
                            {
                                print("                        FromPort\n");
                                print("                            " . $ipPermission->getFromPort() . "\n");
                            }
                            if ($ipPermission->isSetToPort()) 
                            {
                                print("                        ToPort\n");
                                print("                            " . $ipPermission->getToPort() . "\n");
                            }
                            my $userIdGroupPairList = $ipPermission->getUserIdGroupPair();
                            foreach (@$userIdGroupPairList) {
                                my $userIdGroupPair = $_;
                                print("                        UserIdGroupPair\n");
                                if ($userIdGroupPair->isSetUserId()) 
                                {
                                    print("                            UserId\n");
                                    print("                                " . $userIdGroupPair->getUserId() . "\n");
                                }
                                if ($userIdGroupPair->isSetGroupName()) 
                                {
                                    print("                            GroupName\n");
                                    print("                                " . $userIdGroupPair->getGroupName() . "\n");
                                }
                            }
                            my $ipRangeList  =  $ipPermission->getIpRange();
                            foreach (@$ipRangeList) { 
                                my $ipRange = $_;
                                print("                        IpRange\n");
                                print("                            " . $ipRange);
                            }	
                        }
                    }
                } 

           
     };
    my $ex = $@;
    if ($ex) {
        require Amazon::EC2::Exception;
        if (ref $ex eq "Amazon::EC2::Exception") {
            print("Caught Exception: " . $ex->getMessage() . "\n");
            print("Response Status Code: " . $ex->getStatusCode() . "\n");
            print("Error Code: " . $ex->getErrorCode() . "\n");
            print("Error Type: " . $ex->getErrorType() . "\n");
            print("Request ID: " . $ex->getRequestId() . "\n");
            print("XML: " . $ex->getXML() . "\n");
        } else {
            croak $@;
        }
    }
 }

                                                                                                                                                                                                                    