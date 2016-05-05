package pf::pfmon::task::iplog_rotation;

=head1 NAME

pf::pfmon::task::iplog_rotation - class for pfmon task iplog rotation

=cut

=head1 DESCRIPTION

pf::pfmon::task::iplog_rotation

=cut

use strict;
use warnings;
use pf::iplog;
use pf::config qw(%Config);
use Moose;
extends qw(pf::pfmon::task);

sub run {
    my ($self) = @_;
    pf::iplog::rotate(
        $Config{'maintenance'}{'iplog_rotation_window'},
        $Config{maintenance}{iplog_rotation_batch},
        $Config{maintenance}{iplog_rotation_timeout}) if ($Config{'maintenance'}{'iplog_rotation_window'});
}

=head1 AUTHOR


Inverse inc. <info@inverse.ca>

=head1 COPYRIGHT

Copyright (C) 2005-2016 Inverse inc.

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
