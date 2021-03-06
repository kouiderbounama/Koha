use utf8;
package Koha::Schema::Result::ImportRecordMatches;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

Koha::Schema::Result::ImportRecordMatches

=cut

use strict;
use warnings;

use base 'DBIx::Class::Core';

=head1 TABLE: C<import_record_matches>

=cut

__PACKAGE__->table("import_record_matches");

=head1 ACCESSORS

=head2 import_record_id

  data_type: 'integer'
  is_foreign_key: 1
  is_nullable: 0

=head2 candidate_match_id

  data_type: 'integer'
  is_nullable: 0

=head2 score

  data_type: 'integer'
  default_value: 0
  is_nullable: 0

=cut

__PACKAGE__->add_columns(
  "import_record_id",
  { data_type => "integer", is_foreign_key => 1, is_nullable => 0 },
  "candidate_match_id",
  { data_type => "integer", is_nullable => 0 },
  "score",
  { data_type => "integer", default_value => 0, is_nullable => 0 },
);

=head1 RELATIONS

=head2 import_record

Type: belongs_to

Related object: L<Koha::Schema::Result::ImportRecord>

=cut

__PACKAGE__->belongs_to(
  "import_record",
  "Koha::Schema::Result::ImportRecord",
  { import_record_id => "import_record_id" },
  { is_deferrable => 1, on_delete => "CASCADE", on_update => "CASCADE" },
);


# Created by DBIx::Class::Schema::Loader v0.07025 @ 2013-10-14 20:56:21
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:VLaEo7f96O80PqFr/baR9A


# You can replace this text with custom content, and it will be preserved on regeneration
1;
