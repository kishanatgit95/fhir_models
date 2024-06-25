module FHIR
  class ElementDefinition < FHIR::Model
    include FHIR::Hashable
    include FHIR::Json
    include FHIR::Xml

    MULTIPLE_TYPES = {
      'defaultValue' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta'],
      'fixed' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta'],
      'pattern' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta'],
      'minValue' => ['date', 'dateTime', 'instant', 'time', 'decimal', 'integer', 'positiveInt', 'unsignedInt', 'Quantity'],
      'maxValue' => ['date', 'dateTime', 'instant', 'time', 'decimal', 'integer', 'positiveInt', 'unsignedInt', 'Quantity']
    }
    SEARCH_PARAMS = []
    METADATA = {
      'id' => {'type'=>'string', 'path'=>'ElementDefinition.id', 'min'=>0, 'max'=>1},
      'extension' => {'type'=>'Extension', 'path'=>'ElementDefinition.extension', 'min'=>0, 'max'=>Float::INFINITY},
      'modifierExtension' => {'type'=>'Extension', 'path'=>'ElementDefinition.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
      'path' => {'type'=>'string', 'path'=>'ElementDefinition.path', 'min'=>1, 'max'=>1},
      'representation' => {'valid_codes'=>{'http://hl7.org/fhir/property-representation'=>['xmlAttr', 'xmlText', 'typeAttr', 'cdaText', 'xhtml']}, 'type'=>'code', 'path'=>'ElementDefinition.representation', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/property-representation'}},
      'sliceName' => {'type'=>'string', 'path'=>'ElementDefinition.sliceName', 'min'=>0, 'max'=>1},
      'sliceIsConstraining' => {'type'=>'boolean', 'path'=>'ElementDefinition.sliceIsConstraining', 'min'=>0, 'max'=>1},
      'label' => {'type'=>'string', 'path'=>'ElementDefinition.label', 'min'=>0, 'max'=>1},
      'code' => {'type'=>'Coding', 'path'=>'ElementDefinition.code', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'example', 'uri'=>'http://hl7.org/fhir/ValueSet/observation-codes'}},
      'slicing' => {'type'=>'ElementDefinition::Slicing', 'path'=>'ElementDefinition.slicing', 'min'=>0, 'max'=>1},
      'short' => {'type'=>'string', 'path'=>'ElementDefinition.short', 'min'=>0, 'max'=>1},
      'definition' => {'type'=>'markdown', 'path'=>'ElementDefinition.definition', 'min'=>0, 'max'=>1},
      'comment' => {'type'=>'markdown', 'path'=>'ElementDefinition.comment', 'min'=>0, 'max'=>1},
      'requirements' => {'type'=>'markdown', 'path'=>'ElementDefinition.requirements', 'min'=>0, 'max'=>1},
      'alias' => {'type'=>'string', 'path'=>'ElementDefinition.alias', 'min'=>0, 'max'=>Float::INFINITY},
      'min' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.min', 'min'=>0, 'max'=>1},
      'max' => {'type'=>'string', 'path'=>'ElementDefinition.max', 'min'=>0, 'max'=>1},
      'base' => {'type'=>'ElementDefinition::Base', 'path'=>'ElementDefinition.base', 'min'=>0, 'max'=>1},
      'contentReference' => {'type'=>'uri', 'path'=>'ElementDefinition.contentReference', 'min'=>0, 'max'=>1},
      'type' => {'type'=>'ElementDefinition::Type', 'path'=>'ElementDefinition.type', 'min'=>0, 'max'=>Float::INFINITY},
      'defaultValueBase64binary' => {'type'=>'base64Binary', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueBoolean' => {'type'=>'boolean', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueCanonical' => {'type'=>'canonical', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueCode' => {'type'=>'code', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueDate' => {'type'=>'date', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueDatetime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueId' => {'type'=>'id', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueMarkdown' => {'type'=>'markdown', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueOid' => {'type'=>'oid', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValuePositiveint' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueString' => {'type'=>'string', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueTime' => {'type'=>'time', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueUnsignedint' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueUri' => {'type'=>'uri', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueUrl' => {'type'=>'url', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueUuid' => {'type'=>'uuid', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueAddress' => {'type'=>'Address', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueAge' => {'type'=>'Age', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueAnnotation' => {'type'=>'Annotation', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueAttachment' => {'type'=>'Attachment', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueCodeableconcept' => {'type'=>'CodeableConcept', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueCoding' => {'type'=>'Coding', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueContactpoint' => {'type'=>'ContactPoint', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueCount' => {'type'=>'Count', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueDistance' => {'type'=>'Distance', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueDuration' => {'type'=>'Duration', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueHumanname' => {'type'=>'HumanName', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueIdentifier' => {'type'=>'Identifier', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueMoney' => {'type'=>'Money', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValuePeriod' => {'type'=>'Period', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueRange' => {'type'=>'Range', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueRatio' => {'type'=>'Ratio', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueReference' => {'type'=>'Reference', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueSampleddata' => {'type'=>'SampledData', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueSignature' => {'type'=>'Signature', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueTiming' => {'type'=>'Timing', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueContactdetail' => {'type'=>'ContactDetail', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueContributor' => {'type'=>'Contributor', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueDatarequirement' => {'type'=>'DataRequirement', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueExpression' => {'type'=>'Expression', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueParameterdefinition' => {'type'=>'ParameterDefinition', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueRelatedartifact' => {'type'=>'RelatedArtifact', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueTriggerdefinition' => {'type'=>'TriggerDefinition', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueUsagecontext' => {'type'=>'UsageContext', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueDosage' => {'type'=>'Dosage', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'defaultValueMeta' => {'type'=>'Meta', 'path'=>'ElementDefinition.defaultValue[x]', 'min'=>0, 'max'=>1},
      'meaningWhenMissing' => {'type'=>'markdown', 'path'=>'ElementDefinition.meaningWhenMissing', 'min'=>0, 'max'=>1},
      'orderMeaning' => {'type'=>'string', 'path'=>'ElementDefinition.orderMeaning', 'min'=>0, 'max'=>1},
      'fixedBase64binary' => {'type'=>'base64Binary', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedBoolean' => {'type'=>'boolean', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedCanonical' => {'type'=>'canonical', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedCode' => {'type'=>'code', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedDate' => {'type'=>'date', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedDatetime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedId' => {'type'=>'id', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedMarkdown' => {'type'=>'markdown', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedOid' => {'type'=>'oid', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedPositiveint' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedString' => {'type'=>'string', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedTime' => {'type'=>'time', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedUnsignedint' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedUri' => {'type'=>'uri', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedUrl' => {'type'=>'url', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedUuid' => {'type'=>'uuid', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedAddress' => {'type'=>'Address', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedAge' => {'type'=>'Age', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedAnnotation' => {'type'=>'Annotation', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedAttachment' => {'type'=>'Attachment', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedCodeableconcept' => {'type'=>'CodeableConcept', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedCoding' => {'type'=>'Coding', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedContactpoint' => {'type'=>'ContactPoint', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedCount' => {'type'=>'Count', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedDistance' => {'type'=>'Distance', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedDuration' => {'type'=>'Duration', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedHumanname' => {'type'=>'HumanName', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedIdentifier' => {'type'=>'Identifier', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedMoney' => {'type'=>'Money', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedPeriod' => {'type'=>'Period', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedRange' => {'type'=>'Range', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedRatio' => {'type'=>'Ratio', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedReference' => {'type'=>'Reference', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedSampleddata' => {'type'=>'SampledData', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedSignature' => {'type'=>'Signature', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedTiming' => {'type'=>'Timing', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedContactdetail' => {'type'=>'ContactDetail', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedContributor' => {'type'=>'Contributor', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedDatarequirement' => {'type'=>'DataRequirement', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedExpression' => {'type'=>'Expression', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedParameterdefinition' => {'type'=>'ParameterDefinition', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedRelatedartifact' => {'type'=>'RelatedArtifact', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedTriggerdefinition' => {'type'=>'TriggerDefinition', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedUsagecontext' => {'type'=>'UsageContext', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedDosage' => {'type'=>'Dosage', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'fixedMeta' => {'type'=>'Meta', 'path'=>'ElementDefinition.fixed[x]', 'min'=>0, 'max'=>1},
      'patternBase64binary' => {'type'=>'base64Binary', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternBoolean' => {'type'=>'boolean', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternCanonical' => {'type'=>'canonical', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternCode' => {'type'=>'code', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternDate' => {'type'=>'date', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternDatetime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternId' => {'type'=>'id', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternMarkdown' => {'type'=>'markdown', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternOid' => {'type'=>'oid', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternPositiveint' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternString' => {'type'=>'string', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternTime' => {'type'=>'time', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternUnsignedint' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternUri' => {'type'=>'uri', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternUrl' => {'type'=>'url', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternUuid' => {'type'=>'uuid', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternAddress' => {'type'=>'Address', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternAge' => {'type'=>'Age', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternAnnotation' => {'type'=>'Annotation', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternAttachment' => {'type'=>'Attachment', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternCodeableconcept' => {'type'=>'CodeableConcept', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternCoding' => {'type'=>'Coding', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternContactpoint' => {'type'=>'ContactPoint', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternCount' => {'type'=>'Count', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternDistance' => {'type'=>'Distance', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternDuration' => {'type'=>'Duration', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternHumanname' => {'type'=>'HumanName', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternIdentifier' => {'type'=>'Identifier', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternMoney' => {'type'=>'Money', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternPeriod' => {'type'=>'Period', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternRange' => {'type'=>'Range', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternRatio' => {'type'=>'Ratio', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternReference' => {'type'=>'Reference', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternSampleddata' => {'type'=>'SampledData', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternSignature' => {'type'=>'Signature', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternTiming' => {'type'=>'Timing', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternContactdetail' => {'type'=>'ContactDetail', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternContributor' => {'type'=>'Contributor', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternDatarequirement' => {'type'=>'DataRequirement', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternExpression' => {'type'=>'Expression', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternParameterdefinition' => {'type'=>'ParameterDefinition', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternRelatedartifact' => {'type'=>'RelatedArtifact', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternTriggerdefinition' => {'type'=>'TriggerDefinition', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternUsagecontext' => {'type'=>'UsageContext', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternDosage' => {'type'=>'Dosage', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'patternMeta' => {'type'=>'Meta', 'path'=>'ElementDefinition.pattern[x]', 'min'=>0, 'max'=>1},
      'example' => {'type'=>'ElementDefinition::Example', 'path'=>'ElementDefinition.example', 'min'=>0, 'max'=>Float::INFINITY},
      'minValueDate' => {'type'=>'date', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueDatetime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueTime' => {'type'=>'time', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValuePositiveint' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueUnsignedint' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'minValueQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.minValue[x]', 'min'=>0, 'max'=>1},
      'maxValueDate' => {'type'=>'date', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueDatetime' => {'type'=>'dateTime', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueInstant' => {'type'=>'instant', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueTime' => {'type'=>'time', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueDecimal' => {'type'=>'decimal', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueInteger' => {'type'=>'integer', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValuePositiveint' => {'type'=>'positiveInt', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueUnsignedint' => {'type'=>'unsignedInt', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxValueQuantity' => {'type'=>'Quantity', 'path'=>'ElementDefinition.maxValue[x]', 'min'=>0, 'max'=>1},
      'maxLength' => {'type'=>'integer', 'path'=>'ElementDefinition.maxLength', 'min'=>0, 'max'=>1},
      'condition' => {'type'=>'id', 'path'=>'ElementDefinition.condition', 'min'=>0, 'max'=>Float::INFINITY},
      'constraint' => {'type'=>'ElementDefinition::Constraint', 'path'=>'ElementDefinition.constraint', 'min'=>0, 'max'=>Float::INFINITY},
      'mustSupport' => {'type'=>'boolean', 'path'=>'ElementDefinition.mustSupport', 'min'=>0, 'max'=>1},
      'isModifier' => {'type'=>'boolean', 'path'=>'ElementDefinition.isModifier', 'min'=>0, 'max'=>1},
      'isModifierReason' => {'type'=>'string', 'path'=>'ElementDefinition.isModifierReason', 'min'=>0, 'max'=>1},
      'isSummary' => {'type'=>'boolean', 'path'=>'ElementDefinition.isSummary', 'min'=>0, 'max'=>1},
      'binding' => {'type'=>'ElementDefinition::Binding', 'path'=>'ElementDefinition.binding', 'min'=>0, 'max'=>1},
      'mapping' => {'type'=>'ElementDefinition::Mapping', 'path'=>'ElementDefinition.mapping', 'min'=>0, 'max'=>Float::INFINITY}
    }

    class Slicing < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Slicing.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Slicing.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'discriminator' => {'type'=>'ElementDefinition::Slicing::Discriminator', 'path'=>'Slicing.discriminator', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'string', 'path'=>'Slicing.description', 'min'=>0, 'max'=>1},
        'ordered' => {'type'=>'boolean', 'path'=>'Slicing.ordered', 'min'=>0, 'max'=>1},
        'rules' => {'valid_codes'=>{'http://hl7.org/fhir/resource-slicing-rules'=>['closed', 'open', 'openAtEnd']}, 'type'=>'code', 'path'=>'Slicing.rules', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-slicing-rules'}}
      }

      class Discriminator < FHIR::Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Discriminator.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Discriminator.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/discriminator-type'=>['value', 'exists', 'pattern', 'type', 'profile']}, 'type'=>'code', 'path'=>'Discriminator.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/discriminator-type'}},
          'path' => {'type'=>'string', 'path'=>'Discriminator.path', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id        # 0-1 string
        attr_accessor :extension # 0-* [ Extension ]
        attr_accessor :type      # 1-1 code
        attr_accessor :path      # 1-1 string
      end

      attr_accessor :id            # 0-1 string
      attr_accessor :extension     # 0-* [ Extension ]
      attr_accessor :discriminator # 0-* [ ElementDefinition::Slicing::Discriminator ]
      attr_accessor :description   # 0-1 string
      attr_accessor :ordered       # 0-1 boolean
      attr_accessor :rules         # 1-1 code
    end

    class Base < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Base.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Base.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'path' => {'type'=>'string', 'path'=>'Base.path', 'min'=>1, 'max'=>1},
        'min' => {'type'=>'unsignedInt', 'path'=>'Base.min', 'min'=>1, 'max'=>1},
        'max' => {'type'=>'string', 'path'=>'Base.max', 'min'=>1, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :path      # 1-1 string
      attr_accessor :min       # 1-1 unsignedInt
      attr_accessor :max       # 1-1 string
    end

    class Type < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Type.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Type.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'code' => {'type'=>'uri', 'path'=>'Type.code', 'min'=>1, 'max'=>1},
        'profile' => {'type'=>'canonical', 'path'=>'Type.profile', 'min'=>0, 'max'=>Float::INFINITY},
        'targetProfile' => {'type'=>'canonical', 'path'=>'Type.targetProfile', 'min'=>0, 'max'=>Float::INFINITY},
        'aggregation' => {'valid_codes'=>{'http://hl7.org/fhir/resource-aggregation-mode'=>['contained', 'referenced']}, 'type'=>'code', 'path'=>'Type.aggregation', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-aggregation-mode'}},
        'versioning' => {'valid_codes'=>{'http://hl7.org/fhir/reference-version-rules'=>['either', 'independent', 'specific']}, 'type'=>'code', 'path'=>'Type.versioning', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/reference-version-rules'}}
      }

      attr_accessor :id            # 0-1 string
      attr_accessor :extension     # 0-* [ Extension ]
      attr_accessor :code          # 1-1 uri
      attr_accessor :profile       # 0-* [ canonical ]
      attr_accessor :targetProfile # 0-* [ canonical ]
      attr_accessor :aggregation   # 0-* [ code ]
      attr_accessor :versioning    # 0-1 code
    end

    class Example < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'value' => ['base64Binary', 'boolean', 'canonical', 'code', 'date', 'dateTime', 'decimal', 'id', 'instant', 'integer', 'markdown', 'oid', 'positiveInt', 'string', 'time', 'unsignedInt', 'uri', 'url', 'uuid', 'Address', 'Age', 'Annotation', 'Attachment', 'CodeableConcept', 'Coding', 'ContactPoint', 'Count', 'Distance', 'Duration', 'HumanName', 'Identifier', 'Money', 'Period', 'Quantity', 'Range', 'Ratio', 'Reference', 'SampledData', 'Signature', 'Timing', 'ContactDetail', 'Contributor', 'DataRequirement', 'Expression', 'ParameterDefinition', 'RelatedArtifact', 'TriggerDefinition', 'UsageContext', 'Dosage', 'Meta']
      }
      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Example.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Example.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'label' => {'type'=>'string', 'path'=>'Example.label', 'min'=>1, 'max'=>1},
        'valueBase64binary' => {'type'=>'base64Binary', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueBoolean' => {'type'=>'boolean', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueCanonical' => {'type'=>'canonical', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueCode' => {'type'=>'code', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueDate' => {'type'=>'date', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueDatetime' => {'type'=>'dateTime', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueDecimal' => {'type'=>'decimal', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueId' => {'type'=>'id', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueInstant' => {'type'=>'instant', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueInteger' => {'type'=>'integer', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueMarkdown' => {'type'=>'markdown', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueOid' => {'type'=>'oid', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valuePositiveint' => {'type'=>'positiveInt', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueString' => {'type'=>'string', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueTime' => {'type'=>'time', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueUnsignedint' => {'type'=>'unsignedInt', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueUri' => {'type'=>'uri', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueUrl' => {'type'=>'url', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueUuid' => {'type'=>'uuid', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueAddress' => {'type'=>'Address', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueAge' => {'type'=>'Age', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueAnnotation' => {'type'=>'Annotation', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueAttachment' => {'type'=>'Attachment', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueCodeableconcept' => {'type'=>'CodeableConcept', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueCoding' => {'type'=>'Coding', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueContactpoint' => {'type'=>'ContactPoint', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueCount' => {'type'=>'Count', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueDistance' => {'type'=>'Distance', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueDuration' => {'type'=>'Duration', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueHumanname' => {'type'=>'HumanName', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueIdentifier' => {'type'=>'Identifier', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueMoney' => {'type'=>'Money', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valuePeriod' => {'type'=>'Period', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueQuantity' => {'type'=>'Quantity', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueRange' => {'type'=>'Range', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueRatio' => {'type'=>'Ratio', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueReference' => {'type'=>'Reference', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueSampleddata' => {'type'=>'SampledData', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueSignature' => {'type'=>'Signature', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueTiming' => {'type'=>'Timing', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueContactdetail' => {'type'=>'ContactDetail', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueContributor' => {'type'=>'Contributor', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueDatarequirement' => {'type'=>'DataRequirement', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueExpression' => {'type'=>'Expression', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueParameterdefinition' => {'type'=>'ParameterDefinition', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueRelatedartifact' => {'type'=>'RelatedArtifact', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueTriggerdefinition' => {'type'=>'TriggerDefinition', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueUsagecontext' => {'type'=>'UsageContext', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueDosage' => {'type'=>'Dosage', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1},
        'valueMeta' => {'type'=>'Meta', 'path'=>'Example.value[x]', 'min'=>1, 'max'=>1}
      }

      attr_accessor :id                       # 0-1 string
      attr_accessor :extension                # 0-* [ Extension ]
      attr_accessor :label                    # 1-1 string
      attr_accessor :valueBase64binary        # 1-1 base64Binary
      attr_accessor :valueBoolean             # 1-1 boolean
      attr_accessor :valueCanonical           # 1-1 canonical
      attr_accessor :valueCode                # 1-1 code
      attr_accessor :valueDate                # 1-1 date
      attr_accessor :valueDatetime            # 1-1 dateTime
      attr_accessor :valueDecimal             # 1-1 decimal
      attr_accessor :valueId                  # 1-1 id
      attr_accessor :valueInstant             # 1-1 instant
      attr_accessor :valueInteger             # 1-1 integer
      attr_accessor :valueMarkdown            # 1-1 markdown
      attr_accessor :valueOid                 # 1-1 oid
      attr_accessor :valuePositiveint         # 1-1 positiveInt
      attr_accessor :valueString              # 1-1 string
      attr_accessor :valueTime                # 1-1 time
      attr_accessor :valueUnsignedint         # 1-1 unsignedInt
      attr_accessor :valueUri                 # 1-1 uri
      attr_accessor :valueUrl                 # 1-1 url
      attr_accessor :valueUuid                # 1-1 uuid
      attr_accessor :valueAddress             # 1-1 Address
      attr_accessor :valueAge                 # 1-1 Age
      attr_accessor :valueAnnotation          # 1-1 Annotation
      attr_accessor :valueAttachment          # 1-1 Attachment
      attr_accessor :valueCodeableconcept     # 1-1 CodeableConcept
      attr_accessor :valueCoding              # 1-1 Coding
      attr_accessor :valueContactpoint        # 1-1 ContactPoint
      attr_accessor :valueCount               # 1-1 Count
      attr_accessor :valueDistance            # 1-1 Distance
      attr_accessor :valueDuration            # 1-1 Duration
      attr_accessor :valueHumanname           # 1-1 HumanName
      attr_accessor :valueIdentifier          # 1-1 Identifier
      attr_accessor :valueMoney               # 1-1 Money
      attr_accessor :valuePeriod              # 1-1 Period
      attr_accessor :valueQuantity            # 1-1 Quantity
      attr_accessor :valueRange               # 1-1 Range
      attr_accessor :valueRatio               # 1-1 Ratio
      attr_accessor :valueReference           # 1-1 Reference()
      attr_accessor :valueSampleddata         # 1-1 SampledData
      attr_accessor :valueSignature           # 1-1 Signature
      attr_accessor :valueTiming              # 1-1 Timing
      attr_accessor :valueContactdetail       # 1-1 ContactDetail
      attr_accessor :valueContributor         # 1-1 Contributor
      attr_accessor :valueDatarequirement     # 1-1 DataRequirement
      attr_accessor :valueExpression          # 1-1 Expression
      attr_accessor :valueParameterdefinition # 1-1 ParameterDefinition
      attr_accessor :valueRelatedartifact     # 1-1 RelatedArtifact
      attr_accessor :valueTriggerdefinition   # 1-1 TriggerDefinition
      attr_accessor :valueUsagecontext        # 1-1 UsageContext
      attr_accessor :valueDosage              # 1-1 Dosage
      attr_accessor :valueMeta                # 1-1 Meta
    end

    class Constraint < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Constraint.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Constraint.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'key' => {'type'=>'id', 'path'=>'Constraint.key', 'min'=>1, 'max'=>1},
        'requirements' => {'type'=>'string', 'path'=>'Constraint.requirements', 'min'=>0, 'max'=>1},
        'severity' => {'valid_codes'=>{'http://hl7.org/fhir/constraint-severity'=>['error', 'warning']}, 'type'=>'code', 'path'=>'Constraint.severity', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/constraint-severity'}},
        'human' => {'type'=>'string', 'path'=>'Constraint.human', 'min'=>1, 'max'=>1},
        'expression' => {'type'=>'string', 'path'=>'Constraint.expression', 'min'=>0, 'max'=>1},
        'xpath' => {'type'=>'string', 'path'=>'Constraint.xpath', 'min'=>0, 'max'=>1},
        'source' => {'type'=>'canonical', 'path'=>'Constraint.source', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id           # 0-1 string
      attr_accessor :extension    # 0-* [ Extension ]
      attr_accessor :key          # 1-1 id
      attr_accessor :requirements # 0-1 string
      attr_accessor :severity     # 1-1 code
      attr_accessor :human        # 1-1 string
      attr_accessor :expression   # 0-1 string
      attr_accessor :xpath        # 0-1 string
      attr_accessor :source       # 0-1 canonical
    end

    class Binding < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Binding.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Binding.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'strength' => {'valid_codes'=>{'http://hl7.org/fhir/binding-strength'=>['required', 'extensible', 'preferred', 'example']}, 'type'=>'code', 'path'=>'Binding.strength', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/binding-strength'}},
        'description' => {'type'=>'string', 'path'=>'Binding.description', 'min'=>0, 'max'=>1},
        'valueSet' => {'type'=>'canonical', 'path'=>'Binding.valueSet', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id          # 0-1 string
      attr_accessor :extension   # 0-* [ Extension ]
      attr_accessor :strength    # 1-1 code
      attr_accessor :description # 0-1 string
      attr_accessor :valueSet    # 0-1 canonical
    end

    class Mapping < FHIR::Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      METADATA = {
        'id' => {'type'=>'string', 'path'=>'Mapping.id', 'min'=>0, 'max'=>1},
        'extension' => {'type'=>'Extension', 'path'=>'Mapping.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'identity' => {'type'=>'id', 'path'=>'Mapping.identity', 'min'=>1, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'Mapping.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        'map' => {'type'=>'string', 'path'=>'Mapping.map', 'min'=>1, 'max'=>1},
        'comment' => {'type'=>'string', 'path'=>'Mapping.comment', 'min'=>0, 'max'=>1}
      }

      attr_accessor :id        # 0-1 string
      attr_accessor :extension # 0-* [ Extension ]
      attr_accessor :identity  # 1-1 id
      attr_accessor :language  # 0-1 code
      attr_accessor :map       # 1-1 string
      attr_accessor :comment   # 0-1 string
    end

    attr_accessor :id                              # 0-1 string
    attr_accessor :extension                       # 0-* [ Extension ]
    attr_accessor :modifierExtension               # 0-* [ Extension ]
    attr_accessor :path                            # 1-1 string
    attr_accessor :representation                  # 0-* [ code ]
    attr_accessor :sliceName                       # 0-1 string
    attr_accessor :sliceIsConstraining             # 0-1 boolean
    attr_accessor :label                           # 0-1 string
    attr_accessor :code                            # 0-* [ Coding ]
    attr_accessor :slicing                         # 0-1 ElementDefinition::Slicing
    attr_accessor :short                           # 0-1 string
    attr_accessor :definition                      # 0-1 markdown
    attr_accessor :comment                         # 0-1 markdown
    attr_accessor :requirements                    # 0-1 markdown
    attr_accessor :alias                           # 0-* [ string ]
    attr_accessor :min                             # 0-1 unsignedInt
    attr_accessor :max                             # 0-1 string
    attr_accessor :base                            # 0-1 ElementDefinition::Base
    attr_accessor :contentReference                # 0-1 uri
    attr_accessor :type                            # 0-* [ ElementDefinition::Type ]
    attr_accessor :defaultValueBase64binary        # 0-1 base64Binary
    attr_accessor :defaultValueBoolean             # 0-1 boolean
    attr_accessor :defaultValueCanonical           # 0-1 canonical
    attr_accessor :defaultValueCode                # 0-1 code
    attr_accessor :defaultValueDate                # 0-1 date
    attr_accessor :defaultValueDatetime            # 0-1 dateTime
    attr_accessor :defaultValueDecimal             # 0-1 decimal
    attr_accessor :defaultValueId                  # 0-1 id
    attr_accessor :defaultValueInstant             # 0-1 instant
    attr_accessor :defaultValueInteger             # 0-1 integer
    attr_accessor :defaultValueMarkdown            # 0-1 markdown
    attr_accessor :defaultValueOid                 # 0-1 oid
    attr_accessor :defaultValuePositiveint         # 0-1 positiveInt
    attr_accessor :defaultValueString              # 0-1 string
    attr_accessor :defaultValueTime                # 0-1 time
    attr_accessor :defaultValueUnsignedint         # 0-1 unsignedInt
    attr_accessor :defaultValueUri                 # 0-1 uri
    attr_accessor :defaultValueUrl                 # 0-1 url
    attr_accessor :defaultValueUuid                # 0-1 uuid
    attr_accessor :defaultValueAddress             # 0-1 Address
    attr_accessor :defaultValueAge                 # 0-1 Age
    attr_accessor :defaultValueAnnotation          # 0-1 Annotation
    attr_accessor :defaultValueAttachment          # 0-1 Attachment
    attr_accessor :defaultValueCodeableconcept     # 0-1 CodeableConcept
    attr_accessor :defaultValueCoding              # 0-1 Coding
    attr_accessor :defaultValueContactpoint        # 0-1 ContactPoint
    attr_accessor :defaultValueCount               # 0-1 Count
    attr_accessor :defaultValueDistance            # 0-1 Distance
    attr_accessor :defaultValueDuration            # 0-1 Duration
    attr_accessor :defaultValueHumanname           # 0-1 HumanName
    attr_accessor :defaultValueIdentifier          # 0-1 Identifier
    attr_accessor :defaultValueMoney               # 0-1 Money
    attr_accessor :defaultValuePeriod              # 0-1 Period
    attr_accessor :defaultValueQuantity            # 0-1 Quantity
    attr_accessor :defaultValueRange               # 0-1 Range
    attr_accessor :defaultValueRatio               # 0-1 Ratio
    attr_accessor :defaultValueReference           # 0-1 Reference()
    attr_accessor :defaultValueSampleddata         # 0-1 SampledData
    attr_accessor :defaultValueSignature           # 0-1 Signature
    attr_accessor :defaultValueTiming              # 0-1 Timing
    attr_accessor :defaultValueContactdetail       # 0-1 ContactDetail
    attr_accessor :defaultValueContributor         # 0-1 Contributor
    attr_accessor :defaultValueDatarequirement     # 0-1 DataRequirement
    attr_accessor :defaultValueExpression          # 0-1 Expression
    attr_accessor :defaultValueParameterdefinition # 0-1 ParameterDefinition
    attr_accessor :defaultValueRelatedartifact     # 0-1 RelatedArtifact
    attr_accessor :defaultValueTriggerdefinition   # 0-1 TriggerDefinition
    attr_accessor :defaultValueUsagecontext        # 0-1 UsageContext
    attr_accessor :defaultValueDosage              # 0-1 Dosage
    attr_accessor :defaultValueMeta                # 0-1 Meta
    attr_accessor :meaningWhenMissing              # 0-1 markdown
    attr_accessor :orderMeaning                    # 0-1 string
    attr_accessor :fixedBase64binary               # 0-1 base64Binary
    attr_accessor :fixedBoolean                    # 0-1 boolean
    attr_accessor :fixedCanonical                  # 0-1 canonical
    attr_accessor :fixedCode                       # 0-1 code
    attr_accessor :fixedDate                       # 0-1 date
    attr_accessor :fixedDatetime                   # 0-1 dateTime
    attr_accessor :fixedDecimal                    # 0-1 decimal
    attr_accessor :fixedId                         # 0-1 id
    attr_accessor :fixedInstant                    # 0-1 instant
    attr_accessor :fixedInteger                    # 0-1 integer
    attr_accessor :fixedMarkdown                   # 0-1 markdown
    attr_accessor :fixedOid                        # 0-1 oid
    attr_accessor :fixedPositiveint                # 0-1 positiveInt
    attr_accessor :fixedString                     # 0-1 string
    attr_accessor :fixedTime                       # 0-1 time
    attr_accessor :fixedUnsignedint                # 0-1 unsignedInt
    attr_accessor :fixedUri                        # 0-1 uri
    attr_accessor :fixedUrl                        # 0-1 url
    attr_accessor :fixedUuid                       # 0-1 uuid
    attr_accessor :fixedAddress                    # 0-1 Address
    attr_accessor :fixedAge                        # 0-1 Age
    attr_accessor :fixedAnnotation                 # 0-1 Annotation
    attr_accessor :fixedAttachment                 # 0-1 Attachment
    attr_accessor :fixedCodeableconcept            # 0-1 CodeableConcept
    attr_accessor :fixedCoding                     # 0-1 Coding
    attr_accessor :fixedContactpoint               # 0-1 ContactPoint
    attr_accessor :fixedCount                      # 0-1 Count
    attr_accessor :fixedDistance                   # 0-1 Distance
    attr_accessor :fixedDuration                   # 0-1 Duration
    attr_accessor :fixedHumanname                  # 0-1 HumanName
    attr_accessor :fixedIdentifier                 # 0-1 Identifier
    attr_accessor :fixedMoney                      # 0-1 Money
    attr_accessor :fixedPeriod                     # 0-1 Period
    attr_accessor :fixedQuantity                   # 0-1 Quantity
    attr_accessor :fixedRange                      # 0-1 Range
    attr_accessor :fixedRatio                      # 0-1 Ratio
    attr_accessor :fixedReference                  # 0-1 Reference()
    attr_accessor :fixedSampleddata                # 0-1 SampledData
    attr_accessor :fixedSignature                  # 0-1 Signature
    attr_accessor :fixedTiming                     # 0-1 Timing
    attr_accessor :fixedContactdetail              # 0-1 ContactDetail
    attr_accessor :fixedContributor                # 0-1 Contributor
    attr_accessor :fixedDatarequirement            # 0-1 DataRequirement
    attr_accessor :fixedExpression                 # 0-1 Expression
    attr_accessor :fixedParameterdefinition        # 0-1 ParameterDefinition
    attr_accessor :fixedRelatedartifact            # 0-1 RelatedArtifact
    attr_accessor :fixedTriggerdefinition          # 0-1 TriggerDefinition
    attr_accessor :fixedUsagecontext               # 0-1 UsageContext
    attr_accessor :fixedDosage                     # 0-1 Dosage
    attr_accessor :fixedMeta                       # 0-1 Meta
    attr_accessor :patternBase64binary             # 0-1 base64Binary
    attr_accessor :patternBoolean                  # 0-1 boolean
    attr_accessor :patternCanonical                # 0-1 canonical
    attr_accessor :patternCode                     # 0-1 code
    attr_accessor :patternDate                     # 0-1 date
    attr_accessor :patternDatetime                 # 0-1 dateTime
    attr_accessor :patternDecimal                  # 0-1 decimal
    attr_accessor :patternId                       # 0-1 id
    attr_accessor :patternInstant                  # 0-1 instant
    attr_accessor :patternInteger                  # 0-1 integer
    attr_accessor :patternMarkdown                 # 0-1 markdown
    attr_accessor :patternOid                      # 0-1 oid
    attr_accessor :patternPositiveint              # 0-1 positiveInt
    attr_accessor :patternString                   # 0-1 string
    attr_accessor :patternTime                     # 0-1 time
    attr_accessor :patternUnsignedint              # 0-1 unsignedInt
    attr_accessor :patternUri                      # 0-1 uri
    attr_accessor :patternUrl                      # 0-1 url
    attr_accessor :patternUuid                     # 0-1 uuid
    attr_accessor :patternAddress                  # 0-1 Address
    attr_accessor :patternAge                      # 0-1 Age
    attr_accessor :patternAnnotation               # 0-1 Annotation
    attr_accessor :patternAttachment               # 0-1 Attachment
    attr_accessor :patternCodeableconcept          # 0-1 CodeableConcept
    attr_accessor :patternCoding                   # 0-1 Coding
    attr_accessor :patternContactpoint             # 0-1 ContactPoint
    attr_accessor :patternCount                    # 0-1 Count
    attr_accessor :patternDistance                 # 0-1 Distance
    attr_accessor :patternDuration                 # 0-1 Duration
    attr_accessor :patternHumanname                # 0-1 HumanName
    attr_accessor :patternIdentifier               # 0-1 Identifier
    attr_accessor :patternMoney                    # 0-1 Money
    attr_accessor :patternPeriod                   # 0-1 Period
    attr_accessor :patternQuantity                 # 0-1 Quantity
    attr_accessor :patternRange                    # 0-1 Range
    attr_accessor :patternRatio                    # 0-1 Ratio
    attr_accessor :patternReference                # 0-1 Reference()
    attr_accessor :patternSampleddata              # 0-1 SampledData
    attr_accessor :patternSignature                # 0-1 Signature
    attr_accessor :patternTiming                   # 0-1 Timing
    attr_accessor :patternContactdetail            # 0-1 ContactDetail
    attr_accessor :patternContributor              # 0-1 Contributor
    attr_accessor :patternDatarequirement          # 0-1 DataRequirement
    attr_accessor :patternExpression               # 0-1 Expression
    attr_accessor :patternParameterdefinition      # 0-1 ParameterDefinition
    attr_accessor :patternRelatedartifact          # 0-1 RelatedArtifact
    attr_accessor :patternTriggerdefinition        # 0-1 TriggerDefinition
    attr_accessor :patternUsagecontext             # 0-1 UsageContext
    attr_accessor :patternDosage                   # 0-1 Dosage
    attr_accessor :patternMeta                     # 0-1 Meta
    attr_accessor :example                         # 0-* [ ElementDefinition::Example ]
    attr_accessor :minValueDate                    # 0-1 date
    attr_accessor :minValueDatetime                # 0-1 dateTime
    attr_accessor :minValueInstant                 # 0-1 instant
    attr_accessor :minValueTime                    # 0-1 time
    attr_accessor :minValueDecimal                 # 0-1 decimal
    attr_accessor :minValueInteger                 # 0-1 integer
    attr_accessor :minValuePositiveint             # 0-1 positiveInt
    attr_accessor :minValueUnsignedint             # 0-1 unsignedInt
    attr_accessor :minValueQuantity                # 0-1 Quantity
    attr_accessor :maxValueDate                    # 0-1 date
    attr_accessor :maxValueDatetime                # 0-1 dateTime
    attr_accessor :maxValueInstant                 # 0-1 instant
    attr_accessor :maxValueTime                    # 0-1 time
    attr_accessor :maxValueDecimal                 # 0-1 decimal
    attr_accessor :maxValueInteger                 # 0-1 integer
    attr_accessor :maxValuePositiveint             # 0-1 positiveInt
    attr_accessor :maxValueUnsignedint             # 0-1 unsignedInt
    attr_accessor :maxValueQuantity                # 0-1 Quantity
    attr_accessor :maxLength                       # 0-1 integer
    attr_accessor :condition                       # 0-* [ id ]
    attr_accessor :constraint                      # 0-* [ ElementDefinition::Constraint ]
    attr_accessor :mustSupport                     # 0-1 boolean
    attr_accessor :isModifier                      # 0-1 boolean
    attr_accessor :isModifierReason                # 0-1 string
    attr_accessor :isSummary                       # 0-1 boolean
    attr_accessor :binding                         # 0-1 ElementDefinition::Binding
    attr_accessor :mapping                         # 0-* [ ElementDefinition::Mapping ]
  end
end