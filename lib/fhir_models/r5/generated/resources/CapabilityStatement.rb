module FHIR
  module R5
    class CapabilityStatement < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'versionAlgorithm' => ['string', 'Coding']
      }
      SEARCH_PARAMS = ['context', 'context-quantity', 'context-type', 'context-type-quantity', 'context-type-value', 'date', 'description', 'fhirversion', 'format', 'guide', 'identifier', 'jurisdiction', 'mode', 'name', 'publisher', 'resource', 'resource-profile', 'security-service', 'software', 'status', 'supported-profile', 'title', 'url', 'version']
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'CapabilityStatement.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'CapabilityStatement.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'CapabilityStatement.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'CapabilityStatement.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'CapabilityStatement.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'CapabilityStatement.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'CapabilityStatement.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'CapabilityStatement.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'CapabilityStatement.url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'CapabilityStatement.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'CapabilityStatement.version', 'min'=>0, 'max'=>1},
        'versionAlgorithmString' => {'type'=>'string', 'path'=>'CapabilityStatement.versionAlgorithm[x]', 'min'=>0, 'max'=>1},
        'versionAlgorithmCoding' => {'valid_codes'=>{'http://hl7.org/fhir/version-algorithm'=>['semver', 'integer', 'alpha', 'date', 'natural']}, 'type'=>'Coding', 'path'=>'CapabilityStatement.versionAlgorithm[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/version-algorithm'}},
        'name' => {'type'=>'string', 'path'=>'CapabilityStatement.name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'CapabilityStatement.title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'CapabilityStatement.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'type'=>'boolean', 'path'=>'CapabilityStatement.experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'CapabilityStatement.date', 'min'=>1, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'CapabilityStatement.publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'CapabilityStatement.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'CapabilityStatement.description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'CapabilityStatement.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894'], 'urn:iso:std:iso:3166:-2'=>['AF-BAL', 'AF-BAM', 'AF-BDG', 'AF-BDS', 'AF-BGL', 'AF-DAY', 'AF-FRA', 'AF-FYB', 'AF-GHA', 'AF-GHO', 'AF-HEL', 'AF-HER', 'AF-JOW', 'AF-KAB', 'AF-KAN', 'AF-KAP', 'AF-KDZ', 'AF-KHO', 'AF-KNR', 'AF-LAG', 'AF-LOG', 'AF-NAN', 'AF-NIM', 'AF-NUR', 'AF-PAN', 'AF-PAR', 'AF-PIA', 'AF-PKA', 'AF-SAM', 'AF-SAR', 'AF-TAK', 'AF-URU', 'AF-WAR', 'AF-ZAB', 'AX-AX', 'AL-01', 'AL-02', 'AL-03', 'AL-04', 'AL-05', 'AL-06', 'AL-07', 'AL-08', 'AL-09', 'AL-10', 'AL-11', 'AL-12', 'AL-BR', 'AL-BU', 'AL-DI', 'AL-DL', 'AL-DR', 'AL-DV', 'AL-EL', 'AL-ER', 'AL-FR', 'AL-GJ', 'AL-GR', 'AL-HA', 'AL-KA', 'AL-KB', 'AL-KC', 'AL-KO', 'AL-KR', 'AL-KU', 'AL-LB', 'AL-LE', 'AL-LU', 'AL-MK', 'AL-MM', 'AL-MR', 'AL-MT', 'AL-PG', 'AL-PQ', 'AL-PR', 'AL-PU', 'AL-SH', 'AL-SK', 'AL-SR', 'AL-TE', 'AL-TP', 'AL-TR', 'AL-VL', 'DZ-01', 'DZ-02', 'DZ-03', 'DZ-04', 'DZ-05', 'DZ-06', 'DZ-07', 'DZ-08', 'DZ-09', 'DZ-10', 'DZ-11', 'DZ-12', 'DZ-13', 'DZ-14', 'DZ-15', 'DZ-16', 'DZ-17', 'DZ-18', 'DZ-19', 'DZ-20', 'DZ-21', 'DZ-22', 'DZ-23', 'DZ-24', 'DZ-25', 'DZ-26', 'DZ-27', 'DZ-28', 'DZ-29', 'DZ-30', 'DZ-31', 'DZ-32', 'DZ-33', 'DZ-34', 'DZ-35', 'DZ-36', 'DZ-37', 'DZ-38', 'DZ-39', 'DZ-40', 'DZ-41', 'DZ-42', 'DZ-43', 'DZ-44', 'DZ-45', 'DZ-46', 'DZ-47', 'DZ-48', 'AS-AS', 'AD-02', 'AD-03', 'AD-04', 'AD-05', 'AD-06', 'AD-07', 'AD-08', 'AO-BGO', 'AO-BGU', 'AO-BIE', 'AO-CAB', 'AO-CCU', 'AO-CNN', 'AO-CNO', 'AO-CUS', 'AO-HUA', 'AO-HUI', 'AO-LNO', 'AO-LSU', 'AO-LUA', 'AO-MAL', 'AO-MOX', 'AO-NAM', 'AO-UIG', 'AO-ZAI', 'AI-AI', 'AQ-AQ', 'AG-03', 'AG-04', 'AG-05', 'AG-06', 'AG-07', 'AG-08', 'AG-10', 'AG-11', 'AR-A', 'AR-B', 'AR-C', 'AR-D', 'AR-E', 'AR-F', 'AR-G', 'AR-H', 'AR-J', 'AR-K', 'AR-L', 'AR-M', 'AR-N', 'AR-P', 'AR-Q', 'AR-R', 'AR-S', 'AR-T', 'AR-U', 'AR-V', 'AR-W', 'AR-X', 'AR-Y', 'AR-Z', 'AM-AG', 'AM-AR', 'AM-AV', 'AM-ER', 'AM-GR', 'AM-KT', 'AM-LO', 'AM-SH', 'AM-SU', 'AM-TV', 'AM-VD', 'AW-AW', 'AU-ACT', 'AU-NSW', 'AU-NT', 'AU-QLD', 'AU-SA', 'AU-TAS', 'AU-VIC', 'AU-WA', 'AT-1', 'AT-2', 'AT-3', 'AT-4', 'AT-5', 'AT-6', 'AT-7', 'AT-8', 'AT-9', 'AZ-ABS', 'AZ-AGA', 'AZ-AGC', 'AZ-AGM', 'AZ-AGS', 'AZ-AGU', 'AZ-AST', 'AZ-BA', 'AZ-BAB', 'AZ-BAL', 'AZ-BAR', 'AZ-BEY', 'AZ-BIL', 'AZ-CAB', 'AZ-CAL', 'AZ-CUL', 'AZ-DAS', 'AZ-FUZ', 'AZ-GAD', 'AZ-GA', 'AZ-GOR', 'AZ-GOY', 'AZ-GYG', 'AZ-HAC', 'AZ-IMI', 'AZ-ISM', 'AZ-KAL', 'AZ-KAN', 'AZ-KUR', 'AZ-LAC', 'AZ-LA', 'AZ-LAN', 'AZ-LER', 'AZ-MAS', 'AZ-MI', 'AZ-NA', 'AZ-NEF', 'AZ-NV', 'AZ-NX', 'AZ-OGU', 'AZ-ORD', 'AZ-QAB', 'AZ-QAX', 'AZ-QAZ', 'AZ-QBA', 'AZ-QBI', 'AZ-QOB', 'AZ-QUS', 'AZ-SAB', 'AZ-SAD', 'AZ-SAH', 'AZ-SAK', 'AZ-SAL', 'AZ-SAR', 'AZ-SA', 'AZ-SAT', 'AZ-SBN', 'AZ-SIY', 'AZ-SKR', 'AZ-SMI', 'AZ-SM', 'AZ-SMX', 'AZ-SR', 'AZ-SUS', 'AZ-TAR', 'AZ-TOV', 'AZ-UCA', 'AZ-XAC', 'AZ-XA', 'AZ-XCI', 'AZ-XIZ', 'AZ-XVD', 'AZ-YAR', 'AZ-YEV', 'AZ-YE', 'AZ-ZAN', 'AZ-ZAQ', 'AZ-ZAR', 'BS-AK', 'BS-BI', 'BS-BP', 'BS-BY', 'BS-CE', 'BS-CI', 'BS-CK', 'BS-CO', 'BS-CS', 'BS-EG', 'BS-EX', 'BS-FP', 'BS-GC', 'BS-HI', 'BS-HT', 'BS-IN', 'BS-LI', 'BS-MC', 'BS-MG', 'BS-MI', 'BS-NE', 'BS-NO', 'BS-NS', 'BS-RC', 'BS-RI', 'BS-SA', 'BS-SE', 'BS-SO', 'BS-SS', 'BS-SW', 'BS-WG', 'BH-13', 'BH-14', 'BH-15', 'BH-16', 'BH-17', 'BD-01', 'BD-02', 'BD-03', 'BD-04', 'BD-05', 'BD-06', 'BD-07', 'BD-08', 'BD-09', 'BD-10', 'BD-11', 'BD-12', 'BD-13', 'BD-14', 'BD-15', 'BD-16', 'BD-17', 'BD-18', 'BD-19', 'BD-20', 'BD-21', 'BD-22', 'BD-23', 'BD-24', 'BD-25', 'BD-26', 'BD-27', 'BD-28', 'BD-29', 'BD-30', 'BD-31', 'BD-32', 'BD-33', 'BD-34', 'BD-35', 'BD-36', 'BD-37', 'BD-38', 'BD-39', 'BD-40', 'BD-41', 'BD-42', 'BD-43', 'BD-44', 'BD-45', 'BD-46', 'BD-47', 'BD-48', 'BD-49', 'BD-50', 'BD-51', 'BD-52', 'BD-53', 'BD-54', 'BD-55', 'BD-56', 'BD-57', 'BD-58', 'BD-59', 'BD-60', 'BD-61', 'BD-62', 'BD-63', 'BD-64', 'BD-A', 'BD-B', 'BD-C', 'BD-D', 'BD-E', 'BD-F', 'BD-G', 'BB-01', 'BB-02', 'BB-03', 'BB-04', 'BB-05', 'BB-06', 'BB-07', 'BB-08', 'BB-09', 'BB-10', 'BB-11', 'BY-BR', 'BY-HM', 'BY-HO', 'BY-HR', 'BY-MA', 'BY-MI', 'BY-VI', 'BE-BRU', 'BE-VAN', 'BE-VBR', 'BE-VLG', 'BE-VLI', 'BE-VOV', 'BE-VWV', 'BE-WAL', 'BE-WBR', 'BE-WHT', 'BE-WLG', 'BE-WLX', 'BE-WNA', 'BZ-BZ', 'BZ-CY', 'BZ-CZL', 'BZ-OW', 'BZ-SC', 'BZ-TOL', 'BJ-AK', 'BJ-AL', 'BJ-AQ', 'BJ-BO', 'BJ-CO', 'BJ-DO', 'BJ-KO', 'BJ-LI', 'BJ-MO', 'BJ-OU', 'BJ-PL', 'BJ-ZO', 'BM-BM', 'BT-11', 'BT-12', 'BT-13', 'BT-14', 'BT-15', 'BT-21', 'BT-22', 'BT-23', 'BT-24', 'BT-31', 'BT-32', 'BT-33', 'BT-34', 'BT-41', 'BT-42', 'BT-43', 'BT-44', 'BT-45', 'BT-GA', 'BT-TY', 'BO-B', 'BO-C', 'BO-H', 'BO-L', 'BO-N', 'BO-O', 'BO-P', 'BO-S', 'BO-T', 'BQ-BO', 'BQ-SA', 'BQ-SE', 'BA-01', 'BA-02', 'BA-03', 'BA-04', 'BA-05', 'BA-06', 'BA-07', 'BA-08', 'BA-09', 'BA-10', 'BA-BIH', 'BA-BRC', 'BA-SRP', 'BW-CE', 'BW-CH', 'BW-FR', 'BW-GA', 'BW-GH', 'BW-JW', 'BW-KG', 'BW-KL', 'BW-KW', 'BW-LO', 'BW-NE', 'BW-NW', 'BW-SE', 'BW-SO', 'BW-SP', 'BW-ST', 'BV-BV', 'BR-AC', 'BR-AL', 'BR-AM', 'BR-AP', 'BR-BA', 'BR-CE', 'BR-DF', 'BR-ES', 'BR-GO', 'BR-MA', 'BR-MG', 'BR-MS', 'BR-MT', 'BR-PA', 'BR-PB', 'BR-PE', 'BR-PI', 'BR-PR', 'BR-RJ', 'BR-RN', 'BR-RO', 'BR-RR', 'BR-RS', 'BR-SC', 'BR-SE', 'BR-SP', 'BR-TO', 'IO-IO', 'BN-BE', 'BN-BM', 'BN-TE', 'BN-TU', 'BG-01', 'BG-02', 'BG-03', 'BG-04', 'BG-05', 'BG-06', 'BG-07', 'BG-08', 'BG-09', 'BG-10', 'BG-11', 'BG-12', 'BG-13', 'BG-14', 'BG-15', 'BG-16', 'BG-17', 'BG-18', 'BG-19', 'BG-20', 'BG-21', 'BG-22', 'BG-23', 'BG-24', 'BG-25', 'BG-26', 'BG-27', 'BG-28', 'BF-01', 'BF-02', 'BF-03', 'BF-04', 'BF-05', 'BF-06', 'BF-07', 'BF-08', 'BF-09', 'BF-10', 'BF-11', 'BF-12', 'BF-13', 'BF-BAL', 'BF-BAM', 'BF-BAN', 'BF-BAZ', 'BF-BGR', 'BF-BLG', 'BF-BLK', 'BF-COM', 'BF-GAN', 'BF-GNA', 'BF-GOU', 'BF-HOU', 'BF-IOB', 'BF-KAD', 'BF-KEN', 'BF-KMD', 'BF-KMP', 'BF-KOP', 'BF-KOS', 'BF-KOT', 'BF-KOW', 'BF-LER', 'BF-LOR', 'BF-MOU', 'BF-NAM', 'BF-NAO', 'BF-NAY', 'BF-NOU', 'BF-OUB', 'BF-OUD', 'BF-PAS', 'BF-PON', 'BF-SEN', 'BF-SIS', 'BF-SMT', 'BF-SNG', 'BF-SOM', 'BF-SOR', 'BF-TAP', 'BF-TUI', 'BF-YAG', 'BF-YAT', 'BF-ZIR', 'BF-ZON', 'BF-ZOU', 'BI-BB', 'BI-BL', 'BI-BM', 'BI-BR', 'BI-CA', 'BI-CI', 'BI-GI', 'BI-KI', 'BI-KR', 'BI-KY', 'BI-MA', 'BI-MU', 'BI-MW', 'BI-MY', 'BI-NG', 'BI-RT', 'BI-RY', 'KH-10', 'KH-11', 'KH-12', 'KH-13', 'KH-14', 'KH-15', 'KH-16', 'KH-17', 'KH-18', 'KH-19', 'KH-1', 'KH-20', 'KH-21', 'KH-22', 'KH-23', 'KH-24', 'KH-2', 'KH-3', 'KH-4', 'KH-5', 'KH-6', 'KH-7', 'KH-8', 'KH-9', 'CM-AD', 'CM-CE', 'CM-EN', 'CM-ES', 'CM-LT', 'CM-NO', 'CM-NW', 'CM-OU', 'CM-SU', 'CM-SW', 'CA-AB', 'CA-BC', 'CA-MB', 'CA-NB', 'CA-NL', 'CA-NS', 'CA-NT', 'CA-NU', 'CA-ON', 'CA-PE', 'CA-QC', 'CA-SK', 'CA-YT', 'CV-B', 'CV-BR', 'CV-BV', 'CV-CA', 'CV-CF', 'CV-CR', 'CV-MA', 'CV-MO', 'CV-PA', 'CV-PN', 'CV-PR', 'CV-RB', 'CV-RG', 'CV-RS', 'CV-SD', 'CV-SF', 'CV-S', 'CV-SL', 'CV-SM', 'CV-SO', 'CV-SS', 'CV-SV', 'CV-TA', 'CV-TS', 'KY-KY', 'CF-AC', 'CF-BB', 'CF-BGF', 'CF-BK', 'CF-HK', 'CF-HM', 'CF-HS', 'CF-KB', 'CF-KG', 'CF-LB', 'CF-MB', 'CF-MP', 'CF-NM', 'CF-OP', 'CF-SE', 'CF-UK', 'CF-VK', 'TD-BA', 'TD-BG', 'TD-BO', 'TD-CB', 'TD-EE', 'TD-EO', 'TD-GR', 'TD-HL', 'TD-KA', 'TD-LC', 'TD-LO', 'TD-LR', 'TD-MA', 'TD-MC', 'TD-ME', 'TD-MO', 'TD-ND', 'TD-OD', 'TD-SA', 'TD-SI', 'TD-TA', 'TD-TI', 'TD-WF', 'CL-AI', 'CL-AN', 'CL-AP', 'CL-AR', 'CL-AT', 'CL-BI', 'CL-CO', 'CL-LI', 'CL-LL', 'CL-LR', 'CL-MA', 'CL-ML', 'CL-RM', 'CL-TA', 'CL-VS', 'CN-11', 'CN-12', 'CN-13', 'CN-14', 'CN-15', 'CN-21', 'CN-22', 'CN-23', 'CN-31', 'CN-32', 'CN-33', 'CN-34', 'CN-35', 'CN-36', 'CN-37', 'CN-41', 'CN-42', 'CN-43', 'CN-44', 'CN-45', 'CN-46', 'CN-50', 'CN-51', 'CN-52', 'CN-53', 'CN-54', 'CN-61', 'CN-62', 'CN-63', 'CN-64', 'CN-65', 'CN-71', 'CN-91', 'CN-92', 'CX-CX', 'CC-CC', 'CO-AMA', 'CO-ANT', 'CO-ARA', 'CO-ATL', 'CO-BOL', 'CO-BOY', 'CO-CAL', 'CO-CAQ', 'CO-CAS', 'CO-CAU', 'CO-CES', 'CO-CHO', 'CO-COR', 'CO-CUN', 'CO-DC', 'CO-GUA', 'CO-GUV', 'CO-HUI', 'CO-LAG', 'CO-MAG', 'CO-MET', 'CO-NAR', 'CO-NSA', 'CO-PUT', 'CO-QUI', 'CO-RIS', 'CO-SAN', 'CO-SAP', 'CO-SUC', 'CO-TOL', 'CO-VAC', 'CO-VAU', 'CO-VID', 'KM-A', 'KM-G', 'KM-M', 'CG-11', 'CG-12', 'CG-13', 'CG-14', 'CG-15', 'CG-16', 'CG-2', 'CG-5', 'CG-7', 'CG-8', 'CG-9', 'CG-BZV', 'CD-BC', 'CD-BN', 'CD-EQ', 'CD-KA', 'CD-KE', 'CD-KN', 'CD-KW', 'CD-MA', 'CD-NK', 'CD-OR', 'CD-SK', 'CK-CK', 'CR-A', 'CR-C', 'CR-G', 'CR-H', 'CR-L', 'CR-P', 'CR-SJ', 'CI-01', 'CI-02', 'CI-03', 'CI-04', 'CI-05', 'CI-06', 'CI-07', 'CI-08', 'CI-09', 'CI-10', 'CI-11', 'CI-12', 'CI-13', 'CI-14', 'CI-15', 'CI-16', 'CI-17', 'CI-18', 'CI-19', 'HR-01', 'HR-02', 'HR-03', 'HR-04', 'HR-05', 'HR-06', 'HR-07', 'HR-08', 'HR-09', 'HR-10', 'HR-11', 'HR-12', 'HR-13', 'HR-14', 'HR-15', 'HR-16', 'HR-17', 'HR-18', 'HR-19', 'HR-20', 'HR-21', 'CU-01', 'CU-03', 'CU-04', 'CU-05', 'CU-06', 'CU-07', 'CU-08', 'CU-09', 'CU-10', 'CU-11', 'CU-12', 'CU-13', 'CU-14', 'CU-15', 'CU-16', 'CU-99', 'CW-CW', 'CY-01', 'CY-02', 'CY-03', 'CY-04', 'CY-05', 'CY-06', 'CZ-101', 'CZ-102', 'CZ-103', 'CZ-104', 'CZ-105', 'CZ-106', 'CZ-107', 'CZ-108', 'CZ-109', 'CZ-10A', 'CZ-10B', 'CZ-10C', 'CZ-10D', 'CZ-10E', 'CZ-10F', 'CZ-201', 'CZ-202', 'CZ-203', 'CZ-204', 'CZ-205', 'CZ-206', 'CZ-207', 'CZ-208', 'CZ-209', 'CZ-20A', 'CZ-20B', 'CZ-20C', 'CZ-311', 'CZ-312', 'CZ-313', 'CZ-314', 'CZ-315', 'CZ-316', 'CZ-317', 'CZ-321', 'CZ-322', 'CZ-323', 'CZ-324', 'CZ-325', 'CZ-326', 'CZ-327', 'CZ-411', 'CZ-412', 'CZ-413', 'CZ-421', 'CZ-422', 'CZ-423', 'CZ-424', 'CZ-425', 'CZ-426', 'CZ-427', 'CZ-511', 'CZ-512', 'CZ-513', 'CZ-514'], 'http://unstats.un.org/unsd/methods/m49/m49.htm'=>['001', '002', '014', '017', '015', '018', '011', '019', '419', '029', '013', '005', '021', '142', '143', '030', '034', '035', '145', '150', '151', '154', '039', '155', '009', '053', '054', '057', '061']}, 'type'=>'CodeableConcept', 'path'=>'CapabilityStatement.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'CapabilityStatement.purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'CapabilityStatement.copyright', 'min'=>0, 'max'=>1},
        'copyrightLabel' => {'type'=>'string', 'path'=>'CapabilityStatement.copyrightLabel', 'min'=>0, 'max'=>1},
        'kind' => {'valid_codes'=>{'http://hl7.org/fhir/capability-statement-kind'=>['instance', 'capability', 'requirements']}, 'type'=>'code', 'path'=>'CapabilityStatement.kind', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/capability-statement-kind'}},
        'instantiates' => {'type'=>'canonical', 'path'=>'CapabilityStatement.instantiates', 'min'=>0, 'max'=>Float::INFINITY},
        'imports' => {'type'=>'canonical', 'path'=>'CapabilityStatement.imports', 'min'=>0, 'max'=>Float::INFINITY},
        'software' => {'type'=>'CapabilityStatement::Software', 'path'=>'CapabilityStatement.software', 'min'=>0, 'max'=>1},
        'implementation' => {'type'=>'CapabilityStatement::Implementation', 'path'=>'CapabilityStatement.implementation', 'min'=>0, 'max'=>1},
        'fhirVersion' => {'valid_codes'=>{'http://hl7.org/fhir/FHIR-version'=>['0.01', '0.05', '0.06', '0.11', '0.0', '0.0.80', '0.0.81', '0.0.82', '0.4', '0.4.0', '0.5', '0.5.0', '1.0', '1.0.0', '1.0.1', '1.0.2', '1.1', '1.1.0', '1.4', '1.4.0', '1.6', '1.6.0', '1.8', '1.8.0', '3.0', '3.0.0', '3.0.1', '3.0.2', '3.3', '3.3.0', '3.5', '3.5.0', '4.0', '4.0.0', '4.0.1', '4.1', '4.1.0', '4.2', '4.2.0', '4.3', '4.3.0', '4.3.0-cibuild', '4.3.0-snapshot1', '4.4', '4.4.0', '4.5', '4.5.0', '4.6', '4.6.0', '5.0', '5.0.0', '5.0.0-cibuild', '5.0.0-snapshot1', '5.0.0-snapshot2', '5.0.0-ballot', '5.0.0-snapshot3', '5.0.0-draft-final']}, 'type'=>'code', 'path'=>'CapabilityStatement.fhirVersion', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/FHIR-version'}},
        'format' => {'type'=>'code', 'path'=>'CapabilityStatement.format', 'min'=>1, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/capability-format-type'}], 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        'patchFormat' => {'type'=>'code', 'path'=>'CapabilityStatement.patchFormat', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/mimetypes'}},
        'acceptLanguage' => {'type'=>'code', 'path'=>'CapabilityStatement.acceptLanguage', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'implementationGuide' => {'type'=>'canonical', 'path'=>'CapabilityStatement.implementationGuide', 'min'=>0, 'max'=>Float::INFINITY},
        'rest' => {'type'=>'CapabilityStatement::Rest', 'path'=>'CapabilityStatement.rest', 'min'=>0, 'max'=>Float::INFINITY},
        'messaging' => {'type'=>'CapabilityStatement::Messaging', 'path'=>'CapabilityStatement.messaging', 'min'=>0, 'max'=>Float::INFINITY},
        'document' => {'type'=>'CapabilityStatement::Document', 'path'=>'CapabilityStatement.document', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Software < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Software.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Software.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Software.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'name' => {'type'=>'string', 'path'=>'Software.name', 'min'=>1, 'max'=>1},
          'version' => {'type'=>'string', 'path'=>'Software.version', 'min'=>0, 'max'=>1},
          'releaseDate' => {'type'=>'dateTime', 'path'=>'Software.releaseDate', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :name              # 1-1 string
        attr_accessor :version           # 0-1 string
        attr_accessor :releaseDate       # 0-1 dateTime
      end

      class Implementation < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Implementation.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Implementation.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Implementation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'description' => {'type'=>'markdown', 'path'=>'Implementation.description', 'min'=>1, 'max'=>1},
          'url' => {'type'=>'url', 'path'=>'Implementation.url', 'min'=>0, 'max'=>1},
          'custodian' => {'type_profiles'=>['http://hl7.org/fhir/StructureDefinition/Organization'], 'type'=>'Reference', 'path'=>'Implementation.custodian', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :description       # 1-1 markdown
        attr_accessor :url               # 0-1 url
        attr_accessor :custodian         # 0-1 Reference(Organization)
      end

      class Rest < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Rest.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Rest.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Rest.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'mode' => {'valid_codes'=>{'http://hl7.org/fhir/restful-capability-mode'=>['client', 'server']}, 'type'=>'code', 'path'=>'Rest.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/restful-capability-mode'}},
          'documentation' => {'type'=>'markdown', 'path'=>'Rest.documentation', 'min'=>0, 'max'=>1},
          'security' => {'type'=>'CapabilityStatement::Rest::Security', 'path'=>'Rest.security', 'min'=>0, 'max'=>1},
          'resource' => {'type'=>'CapabilityStatement::Rest::Resource', 'path'=>'Rest.resource', 'min'=>0, 'max'=>Float::INFINITY},
          'interaction' => {'type'=>'CapabilityStatement::Rest::Interaction', 'path'=>'Rest.interaction', 'min'=>0, 'max'=>Float::INFINITY},
          'searchParam' => {'type'=>'CapabilityStatement::Rest::Resource::SearchParam', 'path'=>'Rest.searchParam', 'min'=>0, 'max'=>Float::INFINITY},
          'operation' => {'type'=>'CapabilityStatement::Rest::Resource::Operation', 'path'=>'Rest.operation', 'min'=>0, 'max'=>Float::INFINITY},
          'compartment' => {'type'=>'canonical', 'path'=>'Rest.compartment', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Security < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Security.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Security.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Security.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'cors' => {'type'=>'boolean', 'path'=>'Security.cors', 'min'=>0, 'max'=>1},
            'service' => {'valid_codes'=>{'http://hl7.org/fhir/restful-security-service'=>['OAuth', 'SMART-on-FHIR', 'NTLM', 'Basic', 'Kerberos', 'Certificates']}, 'type'=>'CodeableConcept', 'path'=>'Security.service', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/restful-security-service'}},
            'description' => {'type'=>'markdown', 'path'=>'Security.description', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :cors              # 0-1 boolean
          attr_accessor :service           # 0-* [ CodeableConcept ]
          attr_accessor :description       # 0-1 markdown
        end

        class Resource < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Resource.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Resource.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Resource.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'type' => {'valid_codes'=>{'http://hl7.org/fhir/fhir-types'=>['Account', 'ActivityDefinition', 'ActorDefinition', 'AdministrableProductDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'ArtifactAssessment', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BiologicallyDerivedProductDispense', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'ChargeItem', 'ChargeItemDefinition', 'Citation', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'ConditionDefinition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceAssociation', 'DeviceDefinition', 'DeviceDispense', 'DeviceMetric', 'DeviceRequest', 'DeviceUsage', 'DiagnosticReport', 'DocumentReference', 'Encounter', 'EncounterHistory', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'FormularyItem', 'GenomicStudy', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingSelection', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient', 'InsurancePlan', 'InventoryItem', 'InventoryReport', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionIntake', 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'PackagedProductDefinition', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Permission', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RegulatedAuthorization', 'RelatedPerson', 'RequestOrchestration', 'Requirements', 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus', 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestPlan', 'TestReport', 'TestScript', 'Transport', 'ValueSet', 'VerificationResult', 'VisionPrescription']}, 'type'=>'code', 'path'=>'Resource.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/resource-types'}},
            'profile' => {'type'=>'canonical', 'path'=>'Resource.profile', 'min'=>0, 'max'=>1},
            'supportedProfile' => {'type'=>'canonical', 'path'=>'Resource.supportedProfile', 'min'=>0, 'max'=>Float::INFINITY},
            'documentation' => {'type'=>'markdown', 'path'=>'Resource.documentation', 'min'=>0, 'max'=>1},
            'interaction' => {'type'=>'CapabilityStatement::Rest::Resource::Interaction', 'path'=>'Resource.interaction', 'min'=>0, 'max'=>Float::INFINITY},
            'versioning' => {'valid_codes'=>{'http://hl7.org/fhir/versioning-policy'=>['no-version', 'versioned', 'versioned-update']}, 'type'=>'code', 'path'=>'Resource.versioning', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/versioning-policy'}},
            'readHistory' => {'type'=>'boolean', 'path'=>'Resource.readHistory', 'min'=>0, 'max'=>1},
            'updateCreate' => {'type'=>'boolean', 'path'=>'Resource.updateCreate', 'min'=>0, 'max'=>1},
            'conditionalCreate' => {'type'=>'boolean', 'path'=>'Resource.conditionalCreate', 'min'=>0, 'max'=>1},
            'conditionalRead' => {'valid_codes'=>{'http://hl7.org/fhir/conditional-read-status'=>['not-supported', 'modified-since', 'not-match', 'full-support']}, 'type'=>'code', 'path'=>'Resource.conditionalRead', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/conditional-read-status'}},
            'conditionalUpdate' => {'type'=>'boolean', 'path'=>'Resource.conditionalUpdate', 'min'=>0, 'max'=>1},
            'conditionalPatch' => {'type'=>'boolean', 'path'=>'Resource.conditionalPatch', 'min'=>0, 'max'=>1},
            'conditionalDelete' => {'valid_codes'=>{'http://hl7.org/fhir/conditional-delete-status'=>['not-supported', 'single', 'multiple']}, 'type'=>'code', 'path'=>'Resource.conditionalDelete', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/conditional-delete-status'}},
            'referencePolicy' => {'valid_codes'=>{'http://hl7.org/fhir/reference-handling-policy'=>['literal', 'logical', 'resolves', 'enforced', 'local']}, 'type'=>'code', 'path'=>'Resource.referencePolicy', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/reference-handling-policy'}},
            'searchInclude' => {'type'=>'string', 'path'=>'Resource.searchInclude', 'min'=>0, 'max'=>Float::INFINITY},
            'searchRevInclude' => {'type'=>'string', 'path'=>'Resource.searchRevInclude', 'min'=>0, 'max'=>Float::INFINITY},
            'searchParam' => {'type'=>'CapabilityStatement::Rest::Resource::SearchParam', 'path'=>'Resource.searchParam', 'min'=>0, 'max'=>Float::INFINITY},
            'operation' => {'type'=>'CapabilityStatement::Rest::Resource::Operation', 'path'=>'Resource.operation', 'min'=>0, 'max'=>Float::INFINITY}
          }

          class Interaction < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'type'=>'string', 'path'=>'Interaction.id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Interaction.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Interaction.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'code' => {'valid_codes'=>{'http://hl7.org/fhir/restful-interaction'=>['read', 'vread', 'update', 'patch', 'delete', 'history-instance', 'history-type', 'create', 'search-type']}, 'type'=>'code', 'path'=>'Interaction.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/type-restful-interaction'}},
              'documentation' => {'type'=>'markdown', 'path'=>'Interaction.documentation', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :code              # 1-1 code
            attr_accessor :documentation     # 0-1 markdown
          end

          class SearchParam < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'type'=>'string', 'path'=>'SearchParam.id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'SearchParam.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'SearchParam.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'name' => {'type'=>'string', 'path'=>'SearchParam.name', 'min'=>1, 'max'=>1},
              'definition' => {'type'=>'canonical', 'path'=>'SearchParam.definition', 'min'=>0, 'max'=>1},
              'type' => {'valid_codes'=>{'http://hl7.org/fhir/search-param-type'=>['number', 'date', 'string', 'token', 'reference', 'composite', 'quantity', 'uri', 'special']}, 'type'=>'code', 'path'=>'SearchParam.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/search-param-type'}},
              'documentation' => {'type'=>'markdown', 'path'=>'SearchParam.documentation', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :name              # 1-1 string
            attr_accessor :definition        # 0-1 canonical
            attr_accessor :type              # 1-1 code
            attr_accessor :documentation     # 0-1 markdown
          end

          class Operation < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'type'=>'string', 'path'=>'Operation.id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Operation.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Operation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'name' => {'type'=>'string', 'path'=>'Operation.name', 'min'=>1, 'max'=>1},
              'definition' => {'type'=>'canonical', 'path'=>'Operation.definition', 'min'=>1, 'max'=>1},
              'documentation' => {'type'=>'markdown', 'path'=>'Operation.documentation', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :name              # 1-1 string
            attr_accessor :definition        # 1-1 canonical
            attr_accessor :documentation     # 0-1 markdown
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :type              # 1-1 code
          attr_accessor :profile           # 0-1 canonical
          attr_accessor :supportedProfile  # 0-* [ canonical ]
          attr_accessor :documentation     # 0-1 markdown
          attr_accessor :interaction       # 0-* [ CapabilityStatement::Rest::Resource::Interaction ]
          attr_accessor :versioning        # 0-1 code
          attr_accessor :readHistory       # 0-1 boolean
          attr_accessor :updateCreate      # 0-1 boolean
          attr_accessor :conditionalCreate # 0-1 boolean
          attr_accessor :conditionalRead   # 0-1 code
          attr_accessor :conditionalUpdate # 0-1 boolean
          attr_accessor :conditionalPatch  # 0-1 boolean
          attr_accessor :conditionalDelete # 0-1 code
          attr_accessor :referencePolicy   # 0-* [ code ]
          attr_accessor :searchInclude     # 0-* [ string ]
          attr_accessor :searchRevInclude  # 0-* [ string ]
          attr_accessor :searchParam       # 0-* [ CapabilityStatement::Rest::Resource::SearchParam ]
          attr_accessor :operation         # 0-* [ CapabilityStatement::Rest::Resource::Operation ]
        end

        class Interaction < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Interaction.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Interaction.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Interaction.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'code' => {'valid_codes'=>{'http://hl7.org/fhir/restful-interaction'=>['transaction', 'batch', 'search-system', 'history-system']}, 'type'=>'code', 'path'=>'Interaction.code', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/system-restful-interaction'}},
            'documentation' => {'type'=>'markdown', 'path'=>'Interaction.documentation', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :code              # 1-1 code
          attr_accessor :documentation     # 0-1 markdown
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :mode              # 1-1 code
        attr_accessor :documentation     # 0-1 markdown
        attr_accessor :security          # 0-1 CapabilityStatement::Rest::Security
        attr_accessor :resource          # 0-* [ CapabilityStatement::Rest::Resource ]
        attr_accessor :interaction       # 0-* [ CapabilityStatement::Rest::Interaction ]
        attr_accessor :searchParam       # 0-* [ CapabilityStatement::Rest::Resource::SearchParam ]
        attr_accessor :operation         # 0-* [ CapabilityStatement::Rest::Resource::Operation ]
        attr_accessor :compartment       # 0-* [ canonical ]
      end

      class Messaging < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Messaging.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Messaging.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Messaging.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'endpoint' => {'type'=>'CapabilityStatement::Messaging::Endpoint', 'path'=>'Messaging.endpoint', 'min'=>0, 'max'=>Float::INFINITY},
          'reliableCache' => {'type'=>'unsignedInt', 'path'=>'Messaging.reliableCache', 'min'=>0, 'max'=>1},
          'documentation' => {'type'=>'markdown', 'path'=>'Messaging.documentation', 'min'=>0, 'max'=>1},
          'supportedMessage' => {'type'=>'CapabilityStatement::Messaging::SupportedMessage', 'path'=>'Messaging.supportedMessage', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Endpoint < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Endpoint.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Endpoint.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Endpoint.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'protocol' => {'valid_codes'=>{'http://hl7.org/fhir/message-transport'=>['http', 'ftp', 'mllp']}, 'type'=>'Coding', 'path'=>'Endpoint.protocol', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/message-transport'}},
            'address' => {'type'=>'url', 'path'=>'Endpoint.address', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :protocol          # 1-1 Coding
          attr_accessor :address           # 1-1 url
        end

        class SupportedMessage < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'SupportedMessage.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'SupportedMessage.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'SupportedMessage.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'mode' => {'valid_codes'=>{'http://hl7.org/fhir/event-capability-mode'=>['sender', 'receiver']}, 'type'=>'code', 'path'=>'SupportedMessage.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/event-capability-mode'}},
            'definition' => {'type'=>'canonical', 'path'=>'SupportedMessage.definition', 'min'=>1, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :mode              # 1-1 code
          attr_accessor :definition        # 1-1 canonical
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :endpoint          # 0-* [ CapabilityStatement::Messaging::Endpoint ]
        attr_accessor :reliableCache     # 0-1 unsignedInt
        attr_accessor :documentation     # 0-1 markdown
        attr_accessor :supportedMessage  # 0-* [ CapabilityStatement::Messaging::SupportedMessage ]
      end

      class Document < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Document.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Document.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Document.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'mode' => {'valid_codes'=>{'http://hl7.org/fhir/document-mode'=>['producer', 'consumer']}, 'type'=>'code', 'path'=>'Document.mode', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/document-mode'}},
          'documentation' => {'type'=>'markdown', 'path'=>'Document.documentation', 'min'=>0, 'max'=>1},
          'profile' => {'type'=>'canonical', 'path'=>'Document.profile', 'min'=>1, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :mode              # 1-1 code
        attr_accessor :documentation     # 0-1 markdown
        attr_accessor :profile           # 1-1 canonical
      end

      attr_accessor :id                     # 0-1 id
      attr_accessor :meta                   # 0-1 Meta
      attr_accessor :implicitRules          # 0-1 uri
      attr_accessor :language               # 0-1 code
      attr_accessor :text                   # 0-1 Narrative
      attr_accessor :contained              # 0-* [ Resource ]
      attr_accessor :extension              # 0-* [ Extension ]
      attr_accessor :modifierExtension      # 0-* [ Extension ]
      attr_accessor :url                    # 0-1 uri
      attr_accessor :identifier             # 0-* [ Identifier ]
      attr_accessor :version                # 0-1 string
      attr_accessor :versionAlgorithmString # 0-1 string
      attr_accessor :versionAlgorithmCoding # 0-1 Coding
      attr_accessor :name                   # 0-1 string
      attr_accessor :title                  # 0-1 string
      attr_accessor :status                 # 1-1 code
      attr_accessor :experimental           # 0-1 boolean
      attr_accessor :date                   # 1-1 dateTime
      attr_accessor :publisher              # 0-1 string
      attr_accessor :contact                # 0-* [ ContactDetail ]
      attr_accessor :description            # 0-1 markdown
      attr_accessor :useContext             # 0-* [ UsageContext ]
      attr_accessor :jurisdiction           # 0-* [ CodeableConcept ]
      attr_accessor :purpose                # 0-1 markdown
      attr_accessor :copyright              # 0-1 markdown
      attr_accessor :copyrightLabel         # 0-1 string
      attr_accessor :kind                   # 1-1 code
      attr_accessor :instantiates           # 0-* [ canonical ]
      attr_accessor :imports                # 0-* [ canonical ]
      attr_accessor :software               # 0-1 CapabilityStatement::Software
      attr_accessor :implementation         # 0-1 CapabilityStatement::Implementation
      attr_accessor :fhirVersion            # 1-1 code
      attr_accessor :format                 # 1-* [ code ]
      attr_accessor :patchFormat            # 0-* [ code ]
      attr_accessor :acceptLanguage         # 0-* [ code ]
      attr_accessor :implementationGuide    # 0-* [ canonical ]
      attr_accessor :rest                   # 0-* [ CapabilityStatement::Rest ]
      attr_accessor :messaging              # 0-* [ CapabilityStatement::Messaging ]
      attr_accessor :document               # 0-* [ CapabilityStatement::Document ]

      def resourceType
        'CapabilityStatement'
      end
    end
  end
end