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
# Describe Volumes  Sample
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
 # sample for Describe Volumes Action
 #**********************************************************************/
 use Amazon::EC2::Model::DescribeVolumesRequest;
 # @TODO: set request. Action can be passed as Amazon::EC2::Model::DescribeVolumesRequest
 # object or hash of parameters
 # invokeDescribeVolumes($service, $request);

                                                                                                                                                                        
    # 
    # Describe Volumes Action Sample
    #
  sub invokeDescribeVolumes {
      my ($service, $request) = @_;  
      eval {
              my $response = $service->describeVolumes($request);
              
                print ("Service Response\n");
                print ("=============================================================================\n");

                print("        DescribeVolumesResponse\n");
                if ($response->isSetDescribeVolumesResult()) { 
                    print("            DescribeVolumesResult\n");
                    my $describeVolumesResult = $response->getDescribeVolumesResult();
                    my $volumeList = $describeVolumesResult->getVolume();
                    foreach (@$volumeList) {
                        my $volume = $_;
                        print("                Volume\n");
                        if ($volume->isSetVolumeId()) 
                        {
                            print("                    VolumeId\n");
                            print("                        " . $volume->getVolumeId() . "\n");
                        }
                        if ($volume->isSetSize()) 
                        {
                            print("                    Size\n");
                            print("                        " . $volume->getSize() . "\n");
                        }
                        if ($volume->isSetSnapshotId()) 
                        {
                            print("                    SnapshotId\n");
                            print("                        " . $volume->getSnapshotId() . "\n");
                        }
                        if ($volume->isSetAvailabilityZone()) 
                        {
                            print("                    AvailabilityZone\n");
                            print("                        " . $volume->getAvailabilityZone() . "\n");
                        }
                        if ($volume->isSetStatus()) 
                        {
                            print("                    Status\n");
                            print("                        " . $volume->getStatus() . "\n");
                        }
                        if ($volume->isSetCreateTime()) 
                        {
                            print("                    CreateTime\n");
                            print("                        " . $volume->getCreateTime() . "\n");
                        }
                        my $attachmentList = $volume->getAttachment();
                        foreach (@$attachmentList) {
                            my $attachment = $_;
                            print("                    Attachment\n");
                            if ($attachment->isSetVolumeId()) 
                            {
                                print("                        VolumeId\n");
                                print("                            " . $attachment->getVolumeId() . "\n");
                            }
                            if ($attachment->isSetInstanceId()) 
                            {
                                print("                        InstanceId\n");
                                print("                            " . $attachment->getInstanceId() . "\n");
                            }
                            if ($attachment->isSetDevice()) 
                            {
                                print("                        Device\n");
                                print("                            " . $attachment->getDevice() . "\n");
                            }
                            if ($attachment->isSetStatus()) 
                            {
                                print("                        Status\n");
                                print("                            " . $attachment->getStatus() . "\n");
                            }
                            if ($attachment->isSetAttachTime()) 
                            {
                                print("                        AttachTime\n");
                                print("                            " . $attachment->getAttachTime() . "\n");
                            }
                            if ($attachment->isSetDeleteOnTermination()) 
                            {
                                print("                        DeleteOnTermination\n");
                                print("                            " . $attachment->getDeleteOnTermination() . "\n");
                            }
                        }
                    }
                } 
                if ($response->isSetResponseMetadata()) { 
                    print("            ResponseMetadata\n");
                    my $responseMetadata = $response->getResponseMetadata();
                    if ($responseMetadata->isSetRequestId()) 
                    {
                        print("                RequestId\n");
                        print("                    " . $responseMetadata->getRequestId() . "\n");
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

                                                                                                                                                                                                            