module FHIR
  module R5
    class Subscription < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      SEARCH_PARAMS = ['contact', 'content-level', 'filter-value', 'identifier', 'name', 'owner', 'payload', 'status', 'topic', 'type', 'url']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'Subscription.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'Subscription.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'Subscription.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'Subscription.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'Subscription.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'Subscription.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'Subscription.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'Subscription.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'identifier' => {'type'=>'Identifier', 'path'=>'Subscription.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'name' => {'type'=>'string', 'path'=>'Subscription.name', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/subscription-status'=>['requested', 'active', 'error', 'off', 'entered-in-error']}, 'type'=>'code', 'path'=>'Subscription.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-status'}},
        'topic' => {'type'=>'canonical', 'path'=>'Subscription.topic', 'min'=>1, 'max'=>1},
        'contact' => {'type'=>'ContactPoint', 'path'=>'Subscription.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'end' => {'type'=>'instant', 'path'=>'Subscription.end', 'min'=>0, 'max'=>1},
        'managingEntity' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/CareTeam', 'http://hl7.org/fhir/StructureDefinition/HealthcareService', 'http://hl7.org/fhir/StructureDefinition/Organization', 'http://hl7.org/fhir/StructureDefinition/RelatedPerson', 'http://hl7.org/fhir/StructureDefinition/Patient', 'http://hl7.org/fhir/StructureDefinition/Practitioner', 'http://hl7.org/fhir/StructureDefinition/PractitionerRole'], 'type'=>'Reference', 'path'=>'Subscription.managingEntity', 'min'=>0, 'max'=>1},
        'reason' => {'type'=>'string', 'path'=>'Subscription.reason', 'min'=>0, 'max'=>1},
        'filterBy' => {'type'=>'Subscription::FilterBy', 'path'=>'Subscription.filterBy', 'min'=>0, 'max'=>Float::INFINITY},
        'channelType' => {'valid_codes'=>{'http://terminology.hl7.org/CodeSystem/subscription-channel-type'=>['rest-hook', 'websocket', 'email', 'message']}, 'type'=>'Coding', 'path'=>'Subscription.channelType', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-channel-type'}},
        'endpoint' => {'type'=>'url', 'path'=>'Subscription.endpoint', 'min'=>0, 'max'=>1},
        'parameter' => {'type'=>'Subscription::Parameter', 'path'=>'Subscription.parameter', 'min'=>0, 'max'=>Float::INFINITY},
        'heartbeatPeriod' => {'type'=>'unsignedInt', 'path'=>'Subscription.heartbeatPeriod', 'min'=>0, 'max'=>1},
        'timeout' => {'type'=>'unsignedInt', 'path'=>'Subscription.timeout', 'min'=>0, 'max'=>1},
        'contentType' => {'type'=>'code', 'path'=>'Subscription.contentType', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        'content' => {'valid_codes'=>{'http://hl7.org/fhir/subscription-payload-content'=>['empty', 'id-only', 'full-resource']}, 'type'=>'code', 'path'=>'Subscription.content', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/subscription-payload-content'}},
        'maxCount' => {'type'=>'positiveInt', 'path'=>'Subscription.maxCount', 'min'=>0, 'max'=>1}
      }

      class FilterBy < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'FilterBy.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'FilterBy.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'FilterBy.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'resourceType' => {'local_name'=>'local_resourceType', 'type'=>'uri', 'path'=>'FilterBy.resourceType', 'min'=>0, 'max'=>1},
          'filterParameter' => {'type'=>'string', 'path'=>'FilterBy.filterParameter', 'min'=>1, 'max'=>1},
          'comparator' => {'valid_codes'=>{'http://hl7.org/fhir/search-comparator'=>['eq', 'ne', 'gt', 'lt', 'ge', 'le', 'sa', 'eb', 'ap']}, 'type'=>'code', 'path'=>'FilterBy.comparator', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/search-comparator'}},
          'modifier' => {'valid_codes'=>{'http://hl7.org/fhir/search-modifier-code'=>['missing', 'exact', 'contains', 'not', 'text', 'in', 'not-in', 'below', 'above', 'type', 'identifier', 'of-type', 'code-text', 'text-advanced', 'iterate']}, 'type'=>'code', 'path'=>'FilterBy.modifier', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/search-modifier-code'}},
          'value' => {'type'=>'string', 'path'=>'FilterBy.value', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                 # 0-1 string
        attr_accessor :extension          # 0-* [ Extension ]
        attr_accessor :modifierExtension  # 0-* [ Extension ]
        attr_accessor :local_resourceType # 0-1 uri
        attr_accessor :filterParameter    # 1-1 string
        attr_accessor :comparator         # 0-1 code
        attr_accessor :modifier           # 0-1 code
        attr_accessor :value              # 1-1 string
      end

      class Parameter < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Parameter.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Parameter.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Parameter.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'string', 'path'=>'Parameter.name', 'min'=>1, 'max'=>1},
          'value' => {'type'=>'string', 'path'=>'Parameter.value', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :value             # 1-1 string
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
      attr_accessor :name              # 0-1 string
      attr_accessor :status            # 1-1 code
      attr_accessor :topic             # 1-1 canonical
      attr_accessor :contact           # 0-* [ ContactPoint ]
      attr_accessor :end               # 0-1 instant
      attr_accessor :managingEntity    # 0-1 Reference(CareTeam|HealthcareService|Organization|RelatedPerson|Patient|Practitioner|PractitionerRole)
      attr_accessor :reason            # 0-1 string
      attr_accessor :filterBy          # 0-* [ Subscription::FilterBy ]
      attr_accessor :channelType       # 1-1 Coding
      attr_accessor :endpoint          # 0-1 url
      attr_accessor :parameter         # 0-* [ Subscription::Parameter ]
      attr_accessor :heartbeatPeriod   # 0-1 unsignedInt
      attr_accessor :timeout           # 0-1 unsignedInt
      attr_accessor :contentType       # 0-1 code
      attr_accessor :content           # 0-1 code
      attr_accessor :maxCount          # 0-1 positiveInt

      def resourceType
        'Subscription'
      end
    end
  end
end