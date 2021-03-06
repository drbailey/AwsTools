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


package Amazon::EC2::Model::VpnConnection;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::VpnConnection
    # 
    # Properties:
    #
    # 
    # VpnConnectionId: string
    # VpnConnectionState: string
    # CustomerGatewayConfiguration: string
    # Type: string
    # CustomerGatewayId: string
    # VpnGatewayId: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            VpnConnectionId => { FieldValue => undef, FieldType => "string"},
            VpnConnectionState => { FieldValue => undef, FieldType => "string"},
            CustomerGatewayConfiguration => { FieldValue => undef, FieldType => "string"},
            Type => { FieldValue => undef, FieldType => "string"},
            CustomerGatewayId => { FieldValue => undef, FieldType => "string"},
            VpnGatewayId => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getVpnConnectionId {
        return shift->{_fields}->{VpnConnectionId}->{FieldValue};
    }


    sub setVpnConnectionId {
        my ($self, $value) = @_;

        $self->{_fields}->{VpnConnectionId}->{FieldValue} = $value;
        return $self;
    }


    sub withVpnConnectionId {
        my ($self, $value) = @_;
        $self->setVpnConnectionId($value);
        return $self;
    }


    sub isSetVpnConnectionId {
        return defined (shift->{_fields}->{VpnConnectionId}->{FieldValue});
    }


    sub getVpnConnectionState {
        return shift->{_fields}->{VpnConnectionState}->{FieldValue};
    }


    sub setVpnConnectionState {
        my ($self, $value) = @_;

        $self->{_fields}->{VpnConnectionState}->{FieldValue} = $value;
        return $self;
    }


    sub withVpnConnectionState {
        my ($self, $value) = @_;
        $self->setVpnConnectionState($value);
        return $self;
    }


    sub isSetVpnConnectionState {
        return defined (shift->{_fields}->{VpnConnectionState}->{FieldValue});
    }


    sub getCustomerGatewayConfiguration {
        return shift->{_fields}->{CustomerGatewayConfiguration}->{FieldValue};
    }


    sub setCustomerGatewayConfiguration {
        my ($self, $value) = @_;

        $self->{_fields}->{CustomerGatewayConfiguration}->{FieldValue} = $value;
        return $self;
    }


    sub withCustomerGatewayConfiguration {
        my ($self, $value) = @_;
        $self->setCustomerGatewayConfiguration($value);
        return $self;
    }


    sub isSetCustomerGatewayConfiguration {
        return defined (shift->{_fields}->{CustomerGatewayConfiguration}->{FieldValue});
    }


    sub getType {
        return shift->{_fields}->{Type}->{FieldValue};
    }


    sub setType {
        my ($self, $value) = @_;

        $self->{_fields}->{Type}->{FieldValue} = $value;
        return $self;
    }


    sub withType {
        my ($self, $value) = @_;
        $self->setType($value);
        return $self;
    }


    sub isSetType {
        return defined (shift->{_fields}->{Type}->{FieldValue});
    }


    sub getCustomerGatewayId {
        return shift->{_fields}->{CustomerGatewayId}->{FieldValue};
    }


    sub setCustomerGatewayId {
        my ($self, $value) = @_;

        $self->{_fields}->{CustomerGatewayId}->{FieldValue} = $value;
        return $self;
    }


    sub withCustomerGatewayId {
        my ($self, $value) = @_;
        $self->setCustomerGatewayId($value);
        return $self;
    }


    sub isSetCustomerGatewayId {
        return defined (shift->{_fields}->{CustomerGatewayId}->{FieldValue});
    }


    sub getVpnGatewayId {
        return shift->{_fields}->{VpnGatewayId}->{FieldValue};
    }


    sub setVpnGatewayId {
        my ($self, $value) = @_;

        $self->{_fields}->{VpnGatewayId}->{FieldValue} = $value;
        return $self;
    }


    sub withVpnGatewayId {
        my ($self, $value) = @_;
        $self->setVpnGatewayId($value);
        return $self;
    }


    sub isSetVpnGatewayId {
        return defined (shift->{_fields}->{VpnGatewayId}->{FieldValue});
    }





1;