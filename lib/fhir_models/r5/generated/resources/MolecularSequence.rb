module FHIR
  module R5
    class MolecularSequence < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'MolecularSequence.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'MolecularSequence.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'MolecularSequence.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'MolecularSequence.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'MolecularSequence.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'MolecularSequence.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'MolecularSequence.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'MolecularSequence.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'MolecularSequence.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'type' => {'valid_codes'=>{'http://hl7.org/fhir/sequence-type'=>['aa', 'dna', 'rna']}, 'type'=>'code', 'path'=>'MolecularSequence.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/sequence-type'}},
        'subject' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Group', 'http://hl7.org/fhir/StructureDefinition/Substance', 'http://hl7.org/fhir/StructureDefinition/BiologicallyDerivedProduct', 'http://hl7.org/fhir/StructureDefinition/NutritionProduct'], 'type'=>'Reference', 'path'=>'MolecularSequence.subject', 'min'=>0, 'max'=>1},
        'focus' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Resource'], 'type'=>'Reference', 'path'=>'MolecularSequence.focus', 'min'=>0, 'max'=>Float::INFINITY},
        'specimen' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Specimen'], 'type'=>'Reference', 'path'=>'MolecularSequence.specimen', 'min'=>0, 'max'=>1},
        'device' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Device'], 'type'=>'Reference', 'path'=>'MolecularSequence.device', 'min'=>0, 'max'=>1},
        'performer' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'MolecularSequence.performer', 'min'=>0, 'max'=>1},
        'literal' => {'type'=>'string', 'path'=>'MolecularSequence.literal', 'min'=>0, 'max'=>1},
        'formatted' => {'type'=>'Attachment', 'path'=>'MolecularSequence.formatted', 'min'=>0, 'max'=>Float::INFINITY},
        'relative' => {'type'=>'MolecularSequence::Relative', 'path'=>'MolecularSequence.relative', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Relative < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Relative.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Relative.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Relative.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'coordinateSystem' => {'type'=>'CodeableConcept', 'path'=>'Relative.coordinateSystem', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://loinc.org/LL5323-2/'}},
          'ordinalPosition' => {'type'=>'integer', 'path'=>'Relative.ordinalPosition', 'min'=>0, 'max'=>1},
          'sequenceRange' => {'type'=>'Range', 'path'=>'Relative.sequenceRange', 'min'=>0, 'max'=>1},
          'startingSequence' => {'type'=>'MolecularSequence::Relative::StartingSequence', 'path'=>'Relative.startingSequence', 'min'=>0, 'max'=>1},
          'edit' => {'type'=>'MolecularSequence::Relative::Edit', 'path'=>'Relative.edit', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class StartingSequence < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          MULTIPLE_TYPES = {
            'sequence' => ['CodeableConcept', 'string', 'Reference']
          }
          METADATA = {
            'id' => {'type'=>'string', 'path'=>'StartingSequence.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'StartingSequence.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'StartingSequence.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'genomeAssembly' => {'type'=>'CodeableConcept', 'path'=>'StartingSequence.genomeAssembly', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://loinc.org/LL1040-6/'}},
            'chromosome' => {'type'=>'CodeableConcept', 'path'=>'StartingSequence.chromosome', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://loinc.org/LL2938-0/'}},
            'sequenceCodeableConcept' => {'type'=>'CodeableConcept', 'path'=>'StartingSequence.sequence[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'example'}},
            'sequenceString' => {'type'=>'string', 'path'=>'StartingSequence.sequence[x]', 'min'=>0, 'max'=>1},
            'sequenceReference' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/MolecularSequence'], 'type'=>'Reference', 'path'=>'StartingSequence.sequence[x]', 'min'=>0, 'max'=>1},
            'windowStart' => {'type'=>'integer', 'path'=>'StartingSequence.windowStart', 'min'=>0, 'max'=>1},
            'windowEnd' => {'type'=>'integer', 'path'=>'StartingSequence.windowEnd', 'min'=>0, 'max'=>1},
            'orientation' => {'valid_codes'=>{'http://hl7.org/fhir/orientation-type'=>['sense', 'antisense']}, 'type'=>'code', 'path'=>'StartingSequence.orientation', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/orientation-type'}},
            'strand' => {'valid_codes'=>{'http://hl7.org/fhir/strand-type'=>['watson', 'crick']}, 'type'=>'code', 'path'=>'StartingSequence.strand', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/strand-type'}}
          }

          attr_accessor :id                      # 0-1 string
          attr_accessor :extension               # 0-* [ Extension ]
          attr_accessor :modifierExtension       # 0-* [ Extension ]
          attr_accessor :genomeAssembly          # 0-1 CodeableConcept
          attr_accessor :chromosome              # 0-1 CodeableConcept
          attr_accessor :sequenceCodeableConcept # 0-1 CodeableConcept
          attr_accessor :sequenceString          # 0-1 string
          attr_accessor :sequenceReference       # 0-1 Reference(MolecularSequence)
          attr_accessor :windowStart             # 0-1 integer
          attr_accessor :windowEnd               # 0-1 integer
          attr_accessor :orientation             # 0-1 code
          attr_accessor :strand                  # 0-1 code
        end

        class Edit < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Edit.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Edit.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Edit.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'start' => {'type'=>'integer', 'path'=>'Edit.start', 'min'=>0, 'max'=>1},
            'end' => {'type'=>'integer', 'path'=>'Edit.end', 'min'=>0, 'max'=>1},
            'replacementSequence' => {'type'=>'string', 'path'=>'Edit.replacementSequence', 'min'=>0, 'max'=>1},
            'replacedSequence' => {'type'=>'string', 'path'=>'Edit.replacedSequence', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                  # 0-1 string
          attr_accessor :extension           # 0-* [ Extension ]
          attr_accessor :modifierExtension   # 0-* [ Extension ]
          attr_accessor :start               # 0-1 integer
          attr_accessor :end                 # 0-1 integer
          attr_accessor :replacementSequence # 0-1 string
          attr_accessor :replacedSequence    # 0-1 string
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :coordinateSystem  # 1-1 CodeableConcept
        attr_accessor :ordinalPosition   # 0-1 integer
        attr_accessor :sequenceRange     # 0-1 Range
        attr_accessor :startingSequence  # 0-1 MolecularSequence::Relative::StartingSequence
        attr_accessor :edit              # 0-* [ MolecularSequence::Relative::Edit ]
      end

      attr_accessor :id                # 0-1 id
      attr_accessor :meta              # 0-1 Meta
      attr_accessor :implicitRules     # 0-1 uri
      attr_accessor :language          # 0-1 code
      attr_accessor :text              # 0-1 Narrative
      attr_accessor :contained         # 0-* [ Resource ]
      attr_accessor :extension         # 0-* [ Extension ]
      attr_accessor :modifierExtension # 0-* [ Extension ]
      attr_accessor :identifier        # 0-* [ Identifier ]
      attr_accessor :type              # 0-1 code
      attr_accessor :subject           # 0-1 Reference(Patient|Group|Substance|BiologicallyDerivedProduct|NutritionProduct)
      attr_accessor :focus             # 0-* [ Reference(Resource) ]
      attr_accessor :specimen          # 0-1 Reference(Specimen)
      attr_accessor :device            # 0-1 Reference(Device)
      attr_accessor :performer         # 0-1 Reference(Organization)
      attr_accessor :literal           # 0-1 string
      attr_accessor :formatted         # 0-* [ Attachment ]
      attr_accessor :relative          # 0-* [ MolecularSequence::Relative ]

      def resourceType
        'MolecularSequence'
      end
    end
  end
end