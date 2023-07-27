/* checksum : fd08dc516b7c0dde065caf71796ace43 */
@cds.external : true
@cds.persistence.skip : true
@UI.Identification : [
  {
    $Type: 'UI.DataField',
    Value: name
  }
]
entity common.District {
  @Common.Label : 'Name'
  name : String(255);
  @Common.Label : 'Description'
  descr : String(1000);
  key ID : Integer not null;
  @cds.ambiguous : 'missing on condition?'
  texts : Composition of many common.District_texts;
  @cds.ambiguous : 'missing on condition?'
  localized : Association to one common.District_texts on localized.ID = ID;
};

@cds.external : true
@cds.persistence.skip : true
entity common.District_texts {
  @Common.Label : 'Language Code'
  key locale : String(14) not null;
  @Common.Label : 'Name'
  name : String(255);
  @Common.Label : 'Description'
  descr : String(1000);
  key ID : Integer not null;
};

@cds.external : true
service common {};

