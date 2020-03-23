package pfappserver::Form::Config::FilterEngines;

=head1 NAME

pfappserver::Form::Config::FilterEngines -

=head1 DESCRIPTION

pfappserver::Form::Config::FilterEngines

=cut

use strict;
use warnings;
use pfappserver::Form::Field::DynamicList;
use HTML::FormHandler::Moose;
use pf::constants::role qw(@ROLES);
extends 'pfappserver::Base::Form';
with qw(
    pfappserver::Base::Form::Role::Help
);

has_field 'id' => (
    type     => 'Text',
    label    => 'Rule Name',
    required => 1,
);

has_field 'description' => (
    type     => 'Text',
    required => 1,
);

has_field 'condition' => (
    type => 'FilterCondition',
    required => 1,
);

has_field 'status' => (
   type => 'Toggle',
   label => 'Enable Rule',
   checkbox_value => 'enabled',
   unchecked_value => 'disabled',
   default => 'enabled'
);

has_field 'scopes' => (
    type     => 'Select',
    multiple => 1,
    options_method => \&option_scopes,
    required => 1,
);

sub option_scopes {
    my ($f) = @_;
    return $f->form->scopes();
}

sub scopes { }

=head1 AUTHOR

Inverse inc. <info@inverse.ca>

=head1 COPYRIGHT

Copyright (C) 2005-2020 Inverse inc.

=head1 LICENSE

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 2
of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
USA.

=cut

1;
