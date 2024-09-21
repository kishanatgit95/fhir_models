module FHIR
  module R5
    class ExampleScenario < Model
      include FHIR::Hashable
      include FHIR::Json
      include FHIR::Xml

      MULTIPLE_TYPES = {
        'versionAlgorithm' => ['string', 'Coding']
      }
      SEARCH_PARAMS = []
      METADATA = {
        'id' => {'type'=>'id', 'path'=>'ExampleScenario.id', 'min'=>0, 'max'=>1},
        'meta' => {'type'=>'Meta', 'path'=>'ExampleScenario.meta', 'min'=>0, 'max'=>1},
        'implicitRules' => {'type'=>'uri', 'path'=>'ExampleScenario.implicitRules', 'min'=>0, 'max'=>1},
        'language' => {'type'=>'code', 'path'=>'ExampleScenario.language', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'required', 'additional'=>[{'purpose'=>'starter', 'valueSet'=>'http://hl7.org/fhir/ValueSet/languages'}], 'uri'=>'http://hl7.org/fhir/ValueSet/all-languages'}},
        'text' => {'type'=>'Narrative', 'path'=>'ExampleScenario.text', 'min'=>0, 'max'=>1},
        'contained' => {'type'=>'Resource', 'path'=>'ExampleScenario.contained', 'min'=>0, 'max'=>Float::INFINITY},
        'extension' => {'type'=>'Extension', 'path'=>'ExampleScenario.extension', 'min'=>0, 'max'=>Float::INFINITY},
        'modifierExtension' => {'type'=>'Extension', 'path'=>'ExampleScenario.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
        'url' => {'type'=>'uri', 'path'=>'ExampleScenario.url', 'min'=>0, 'max'=>1},
        'identifier' => {'type'=>'Identifier', 'path'=>'ExampleScenario.identifier', 'min'=>0, 'max'=>Float::INFINITY},
        'version' => {'type'=>'string', 'path'=>'ExampleScenario.version', 'min'=>0, 'max'=>1},
        'versionAlgorithmString' => {'type'=>'string', 'path'=>'ExampleScenario.versionAlgorithm[x]', 'min'=>0, 'max'=>1},
        'versionAlgorithmCoding' => {'valid_codes'=>{'http://hl7.org/fhir/version-algorithm'=>['semver', 'integer', 'alpha', 'date', 'natural']}, 'type'=>'Coding', 'path'=>'ExampleScenario.versionAlgorithm[x]', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/version-algorithm'}},
        'name' => {'type'=>'string', 'path'=>'ExampleScenario.name', 'min'=>0, 'max'=>1},
        'title' => {'type'=>'string', 'path'=>'ExampleScenario.title', 'min'=>0, 'max'=>1},
        'status' => {'valid_codes'=>{'http://hl7.org/fhir/publication-status'=>['draft', 'active', 'retired', 'unknown']}, 'type'=>'code', 'path'=>'ExampleScenario.status', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/publication-status'}},
        'experimental' => {'type'=>'boolean', 'path'=>'ExampleScenario.experimental', 'min'=>0, 'max'=>1},
        'date' => {'type'=>'dateTime', 'path'=>'ExampleScenario.date', 'min'=>0, 'max'=>1},
        'publisher' => {'type'=>'string', 'path'=>'ExampleScenario.publisher', 'min'=>0, 'max'=>1},
        'contact' => {'type'=>'ContactDetail', 'path'=>'ExampleScenario.contact', 'min'=>0, 'max'=>Float::INFINITY},
        'description' => {'type'=>'markdown', 'path'=>'ExampleScenario.description', 'min'=>0, 'max'=>1},
        'useContext' => {'type'=>'UsageContext', 'path'=>'ExampleScenario.useContext', 'min'=>0, 'max'=>Float::INFINITY},
        'jurisdiction' => {'valid_codes'=>{'urn:iso:std:iso:3166'=>['AD', 'AE', 'AF', 'AG', 'AI', 'AL', 'AM', 'AO', 'AQ', 'AR', 'AS', 'AT', 'AU', 'AW', 'AX', 'AZ', 'BA', 'BB', 'BD', 'BE', 'BF', 'BG', 'BH', 'BI', 'BJ', 'BL', 'BM', 'BN', 'BO', 'BQ', 'BR', 'BS', 'BT', 'BV', 'BW', 'BY', 'BZ', 'CA', 'CC', 'CD', 'CF', 'CG', 'CH', 'CI', 'CK', 'CL', 'CM', 'CN', 'CO', 'CR', 'CU', 'CV', 'CW', 'CX', 'CY', 'CZ', 'DE', 'DJ', 'DK', 'DM', 'DO', 'DZ', 'EC', 'EE', 'EG', 'EH', 'ER', 'ES', 'ET', 'FI', 'FJ', 'FK', 'FM', 'FO', 'FR', 'GA', 'GB', 'GD', 'GE', 'GF', 'GG', 'GH', 'GI', 'GL', 'GM', 'GN', 'GP', 'GQ', 'GR', 'GS', 'GT', 'GU', 'GW', 'GY', 'HK', 'HM', 'HN', 'HR', 'HT', 'HU', 'ID', 'IE', 'IL', 'IM', 'IN', 'IO', 'IQ', 'IR', 'IS', 'IT', 'JE', 'JM', 'JO', 'JP', 'KE', 'KG', 'KH', 'KI', 'KM', 'KN', 'KP', 'KR', 'KW', 'KY', 'KZ', 'LA', 'LB', 'LC', 'LI', 'LK', 'LR', 'LS', 'LT', 'LU', 'LV', 'LY', 'MA', 'MC', 'MD', 'ME', 'MF', 'MG', 'MH', 'MK', 'ML', 'MM', 'MN', 'MO', 'MP', 'MQ', 'MR', 'MS', 'MT', 'MU', 'MV', 'MW', 'MX', 'MY', 'MZ', 'NA', 'NC', 'NE', 'NF', 'NG', 'NI', 'NL', 'NO', 'NP', 'NR', 'NU', 'NZ', 'OM', 'PA', 'PE', 'PF', 'PG', 'PH', 'PK', 'PL', 'PM', 'PN', 'PR', 'PS', 'PT', 'PW', 'PY', 'QA', 'RE', 'RO', 'RS', 'RU', 'RW', 'SA', 'SB', 'SC', 'SD', 'SE', 'SG', 'SH', 'SI', 'SJ', 'SK', 'SL', 'SM', 'SN', 'SO', 'SR', 'SS', 'ST', 'SV', 'SX', 'SY', 'SZ', 'TC', 'TD', 'TF', 'TG', 'TH', 'TJ', 'TK', 'TL', 'TM', 'TN', 'TO', 'TR', 'TT', 'TV', 'TW', 'TZ', 'UA', 'UG', 'UM', 'US', 'UY', 'UZ', 'VA', 'VC', 'VE', 'VG', 'VI', 'VN', 'VU', 'WF', 'WS', 'YE', 'YT', 'ZA', 'ZM', 'ZW', 'ABW', 'AFG', 'AGO', 'AIA', 'ALA', 'ALB', 'AND', 'ARE', 'ARG', 'ARM', 'ASM', 'ATA', 'ATF', 'ATG', 'AUS', 'AUT', 'AZE', 'BDI', 'BEL', 'BEN', 'BES', 'BFA', 'BGD', 'BGR', 'BHR', 'BHS', 'BIH', 'BLM', 'BLR', 'BLZ', 'BMU', 'BOL', 'BRA', 'BRB', 'BRN', 'BTN', 'BVT', 'BWA', 'CAF', 'CAN', 'CCK', 'CHE', 'CHL', 'CHN', 'CIV', 'CMR', 'COD', 'COG', 'COK', 'COL', 'COM', 'CPV', 'CRI', 'CUB', 'CUW', 'CXR', 'CYM', 'CYP', 'CZE', 'DEU', 'DJI', 'DMA', 'DNK', 'DOM', 'DZA', 'ECU', 'EGY', 'ERI', 'ESH', 'ESP', 'EST', 'ETH', 'FIN', 'FJI', 'FLK', 'FRA', 'FRO', 'FSM', 'GAB', 'GBR', 'GEO', 'GGY', 'GHA', 'GIB', 'GIN', 'GLP', 'GMB', 'GNB', 'GNQ', 'GRC', 'GRD', 'GRL', 'GTM', 'GUF', 'GUM', 'GUY', 'HKG', 'HMD', 'HND', 'HRV', 'HTI', 'HUN', 'IDN', 'IMN', 'IND', 'IOT', 'IRL', 'IRN', 'IRQ', 'ISL', 'ISR', 'ITA', 'JAM', 'JEY', 'JOR', 'JPN', 'KAZ', 'KEN', 'KGZ', 'KHM', 'KIR', 'KNA', 'KOR', 'KWT', 'LAO', 'LBN', 'LBR', 'LBY', 'LCA', 'LIE', 'LKA', 'LSO', 'LTU', 'LUX', 'LVA', 'MAC', 'MAF', 'MAR', 'MCO', 'MDA', 'MDG', 'MDV', 'MEX', 'MHL', 'MKD', 'MLI', 'MLT', 'MMR', 'MNE', 'MNG', 'MNP', 'MOZ', 'MRT', 'MSR', 'MTQ', 'MUS', 'MWI', 'MYS', 'MYT', 'NAM', 'NCL', 'NER', 'NFK', 'NGA', 'NIC', 'NIU', 'NLD', 'NOR', 'NPL', 'NRU', 'NZL', 'OMN', 'PAK', 'PAN', 'PCN', 'PER', 'PHL', 'PLW', 'PNG', 'POL', 'PRI', 'PRK', 'PRT', 'PRY', 'PSE', 'PYF', 'QAT', 'REU', 'ROU', 'RUS', 'RWA', 'SAU', 'SDN', 'SEN', 'SGP', 'SGS', 'SHN', 'SJM', 'SLB', 'SLE', 'SLV', 'SMR', 'SOM', 'SPM', 'SRB', 'SSD', 'STP', 'SUR', 'SVK', 'SVN', 'SWE', 'SWZ', 'SXM', 'SYC', 'SYR', 'TCA', 'TCD', 'TGO', 'THA', 'TJK', 'TKL', 'TKM', 'TLS', 'TON', 'TTO', 'TUN', 'TUR', 'TUV', 'TWN', 'TZA', 'UGA', 'UKR', 'UMI', 'URY', 'USA', 'UZB', 'VAT', 'VCT', 'VEN', 'VGB', 'VIR', 'VNM', 'VUT', 'WLF', 'WSM', 'YEM', 'ZAF', 'ZMB', 'ZWE', '004', '008', '010', '012', '016', '020', '024', '028', '031', '032', '036', '040', '044', '048', '050', '051', '052', '056', '060', '064', '068', '070', '072', '074', '076', '084', '086', '090', '092', '096', '100', '104', '108', '112', '116', '120', '124', '132', '136', '140', '144', '148', '152', '156', '158', '162', '166', '170', '174', '175', '178', '180', '184', '188', '191', '192', '196', '203', '204', '208', '212', '214', '218', '222', '226', '231', '232', '233', '234', '238', '239', '242', '246', '248', '250', '254', '258', '260', '262', '266', '268', '270', '275', '276', '288', '292', '296', '300', '304', '308', '312', '316', '320', '324', '328', '332', '334', '336', '340', '344', '348', '352', '356', '360', '364', '368', '372', '376', '380', '384', '388', '392', '398', '400', '404', '408', '410', '414', '417', '418', '422', '426', '428', '430', '434', '438', '440', '442', '446', '450', '454', '458', '462', '466', '470', '474', '478', '480', '484', '492', '496', '498', '499', '500', '504', '508', '512', '516', '520', '524', '528', '531', '533', '534', '535', '540', '548', '554', '558', '562', '566', '570', '574', '578', '580', '581', '583', '584', '585', '586', '591', '598', '600', '604', '608', '612', '616', '620', '624', '626', '630', '634', '638', '642', '643', '646', '652', '654', '659', '660', '662', '663', '666', '670', '674', '678', '682', '686', '688', '690', '694', '702', '703', '704', '705', '706', '710', '716', '724', '728', '729', '732', '740', '744', '748', '752', '756', '760', '762', '764', '768', '772', '776', '780', '784', '788', '792', '795', '796', '798', '800', '804', '807', '818', '826', '831', '832', '833', '834', '840', '850', '854', '858', '860', '862', '876', '882', '887', '894'], 'urn:iso:std:iso:3166:-2'=>['AF-BAL', 'AF-BAM', 'AF-BDG', 'AF-BDS', 'AF-BGL', 'AF-DAY', 'AF-FRA', 'AF-FYB', 'AF-GHA', 'AF-GHO', 'AF-HEL', 'AF-HER', 'AF-JOW', 'AF-KAB', 'AF-KAN', 'AF-KAP', 'AF-KDZ', 'AF-KHO', 'AF-KNR', 'AF-LAG', 'AF-LOG', 'AF-NAN', 'AF-NIM', 'AF-NUR', 'AF-PAN', 'AF-PAR', 'AF-PIA', 'AF-PKA', 'AF-SAM', 'AF-SAR', 'AF-TAK', 'AF-URU', 'AF-WAR', 'AF-ZAB', 'AX-AX', 'AL-01', 'AL-02', 'AL-03', 'AL-04', 'AL-05', 'AL-06', 'AL-07', 'AL-08', 'AL-09', 'AL-10', 'AL-11', 'AL-12', 'AL-BR', 'AL-BU', 'AL-DI', 'AL-DL', 'AL-DR', 'AL-DV', 'AL-EL', 'AL-ER', 'AL-FR', 'AL-GJ', 'AL-GR', 'AL-HA', 'AL-KA', 'AL-KB', 'AL-KC', 'AL-KO', 'AL-KR', 'AL-KU', 'AL-LB', 'AL-LE', 'AL-LU', 'AL-MK', 'AL-MM', 'AL-MR', 'AL-MT', 'AL-PG', 'AL-PQ', 'AL-PR', 'AL-PU', 'AL-SH', 'AL-SK', 'AL-SR', 'AL-TE', 'AL-TP', 'AL-TR', 'AL-VL', 'DZ-01', 'DZ-02', 'DZ-03', 'DZ-04', 'DZ-05', 'DZ-06', 'DZ-07', 'DZ-08', 'DZ-09', 'DZ-10', 'DZ-11', 'DZ-12', 'DZ-13', 'DZ-14', 'DZ-15', 'DZ-16', 'DZ-17', 'DZ-18', 'DZ-19', 'DZ-20', 'DZ-21', 'DZ-22', 'DZ-23', 'DZ-24', 'DZ-25', 'DZ-26', 'DZ-27', 'DZ-28', 'DZ-29', 'DZ-30', 'DZ-31', 'DZ-32', 'DZ-33', 'DZ-34', 'DZ-35', 'DZ-36', 'DZ-37', 'DZ-38', 'DZ-39', 'DZ-40', 'DZ-41', 'DZ-42', 'DZ-43', 'DZ-44', 'DZ-45', 'DZ-46', 'DZ-47', 'DZ-48', 'AS-AS', 'AD-02', 'AD-03', 'AD-04', 'AD-05', 'AD-06', 'AD-07', 'AD-08', 'AO-BGO', 'AO-BGU', 'AO-BIE', 'AO-CAB', 'AO-CCU', 'AO-CNN', 'AO-CNO', 'AO-CUS', 'AO-HUA', 'AO-HUI', 'AO-LNO', 'AO-LSU', 'AO-LUA', 'AO-MAL', 'AO-MOX', 'AO-NAM', 'AO-UIG', 'AO-ZAI', 'AI-AI', 'AQ-AQ', 'AG-03', 'AG-04', 'AG-05', 'AG-06', 'AG-07', 'AG-08', 'AG-10', 'AG-11', 'AR-A', 'AR-B', 'AR-C', 'AR-D', 'AR-E', 'AR-F', 'AR-G', 'AR-H', 'AR-J', 'AR-K', 'AR-L', 'AR-M', 'AR-N', 'AR-P', 'AR-Q', 'AR-R', 'AR-S', 'AR-T', 'AR-U', 'AR-V', 'AR-W', 'AR-X', 'AR-Y', 'AR-Z', 'AM-AG', 'AM-AR', 'AM-AV', 'AM-ER', 'AM-GR', 'AM-KT', 'AM-LO', 'AM-SH', 'AM-SU', 'AM-TV', 'AM-VD', 'AW-AW', 'AU-ACT', 'AU-NSW', 'AU-NT', 'AU-QLD', 'AU-SA', 'AU-TAS', 'AU-VIC', 'AU-WA', 'AT-1', 'AT-2', 'AT-3', 'AT-4', 'AT-5', 'AT-6', 'AT-7', 'AT-8', 'AT-9', 'AZ-ABS', 'AZ-AGA', 'AZ-AGC', 'AZ-AGM', 'AZ-AGS', 'AZ-AGU', 'AZ-AST', 'AZ-BA', 'AZ-BAB', 'AZ-BAL', 'AZ-BAR', 'AZ-BEY', 'AZ-BIL', 'AZ-CAB', 'AZ-CAL', 'AZ-CUL', 'AZ-DAS', 'AZ-FUZ', 'AZ-GAD', 'AZ-GA', 'AZ-GOR', 'AZ-GOY', 'AZ-GYG', 'AZ-HAC', 'AZ-IMI', 'AZ-ISM', 'AZ-KAL', 'AZ-KAN', 'AZ-KUR', 'AZ-LAC', 'AZ-LA', 'AZ-LAN', 'AZ-LER', 'AZ-MAS', 'AZ-MI', 'AZ-NA', 'AZ-NEF', 'AZ-NV', 'AZ-NX', 'AZ-OGU', 'AZ-ORD', 'AZ-QAB', 'AZ-QAX', 'AZ-QAZ', 'AZ-QBA', 'AZ-QBI', 'AZ-QOB', 'AZ-QUS', 'AZ-SAB', 'AZ-SAD', 'AZ-SAH', 'AZ-SAK', 'AZ-SAL', 'AZ-SAR', 'AZ-SA', 'AZ-SAT', 'AZ-SBN', 'AZ-SIY', 'AZ-SKR', 'AZ-SMI', 'AZ-SM', 'AZ-SMX', 'AZ-SR', 'AZ-SUS', 'AZ-TAR', 'AZ-TOV', 'AZ-UCA', 'AZ-XAC', 'AZ-XA', 'AZ-XCI', 'AZ-XIZ', 'AZ-XVD', 'AZ-YAR', 'AZ-YEV', 'AZ-YE', 'AZ-ZAN', 'AZ-ZAQ', 'AZ-ZAR', 'BS-AK', 'BS-BI', 'BS-BP', 'BS-BY', 'BS-CE', 'BS-CI', 'BS-CK', 'BS-CO', 'BS-CS', 'BS-EG', 'BS-EX', 'BS-FP', 'BS-GC', 'BS-HI', 'BS-HT', 'BS-IN', 'BS-LI', 'BS-MC', 'BS-MG', 'BS-MI', 'BS-NE', 'BS-NO', 'BS-NS', 'BS-RC', 'BS-RI', 'BS-SA', 'BS-SE', 'BS-SO', 'BS-SS', 'BS-SW', 'BS-WG', 'BH-13', 'BH-14', 'BH-15', 'BH-16', 'BH-17', 'BD-01', 'BD-02', 'BD-03', 'BD-04', 'BD-05', 'BD-06', 'BD-07', 'BD-08', 'BD-09', 'BD-10', 'BD-11', 'BD-12', 'BD-13', 'BD-14', 'BD-15', 'BD-16', 'BD-17', 'BD-18', 'BD-19', 'BD-20', 'BD-21', 'BD-22', 'BD-23', 'BD-24', 'BD-25', 'BD-26', 'BD-27', 'BD-28', 'BD-29', 'BD-30', 'BD-31', 'BD-32', 'BD-33', 'BD-34', 'BD-35', 'BD-36', 'BD-37', 'BD-38', 'BD-39', 'BD-40', 'BD-41', 'BD-42', 'BD-43', 'BD-44', 'BD-45', 'BD-46', 'BD-47', 'BD-48', 'BD-49', 'BD-50', 'BD-51', 'BD-52', 'BD-53', 'BD-54', 'BD-55', 'BD-56', 'BD-57', 'BD-58', 'BD-59', 'BD-60', 'BD-61', 'BD-62', 'BD-63', 'BD-64', 'BD-A', 'BD-B', 'BD-C', 'BD-D', 'BD-E', 'BD-F', 'BD-G', 'BB-01', 'BB-02', 'BB-03', 'BB-04', 'BB-05', 'BB-06', 'BB-07', 'BB-08', 'BB-09', 'BB-10', 'BB-11', 'BY-BR', 'BY-HM', 'BY-HO', 'BY-HR', 'BY-MA', 'BY-MI', 'BY-VI', 'BE-BRU', 'BE-VAN', 'BE-VBR', 'BE-VLG', 'BE-VLI', 'BE-VOV', 'BE-VWV', 'BE-WAL', 'BE-WBR', 'BE-WHT', 'BE-WLG', 'BE-WLX', 'BE-WNA', 'BZ-BZ', 'BZ-CY', 'BZ-CZL', 'BZ-OW', 'BZ-SC', 'BZ-TOL', 'BJ-AK', 'BJ-AL', 'BJ-AQ', 'BJ-BO', 'BJ-CO', 'BJ-DO', 'BJ-KO', 'BJ-LI', 'BJ-MO', 'BJ-OU', 'BJ-PL', 'BJ-ZO', 'BM-BM', 'BT-11', 'BT-12', 'BT-13', 'BT-14', 'BT-15', 'BT-21', 'BT-22', 'BT-23', 'BT-24', 'BT-31', 'BT-32', 'BT-33', 'BT-34', 'BT-41', 'BT-42', 'BT-43', 'BT-44', 'BT-45', 'BT-GA', 'BT-TY', 'BO-B', 'BO-C', 'BO-H', 'BO-L', 'BO-N', 'BO-O', 'BO-P', 'BO-S', 'BO-T', 'BQ-BO', 'BQ-SA', 'BQ-SE', 'BA-01', 'BA-02', 'BA-03', 'BA-04', 'BA-05', 'BA-06', 'BA-07', 'BA-08', 'BA-09', 'BA-10', 'BA-BIH', 'BA-BRC', 'BA-SRP', 'BW-CE', 'BW-CH', 'BW-FR', 'BW-GA', 'BW-GH', 'BW-JW', 'BW-KG', 'BW-KL', 'BW-KW', 'BW-LO', 'BW-NE', 'BW-NW', 'BW-SE', 'BW-SO', 'BW-SP', 'BW-ST', 'BV-BV', 'BR-AC', 'BR-AL', 'BR-AM', 'BR-AP', 'BR-BA', 'BR-CE', 'BR-DF', 'BR-ES', 'BR-GO', 'BR-MA', 'BR-MG', 'BR-MS', 'BR-MT', 'BR-PA', 'BR-PB', 'BR-PE', 'BR-PI', 'BR-PR', 'BR-RJ', 'BR-RN', 'BR-RO', 'BR-RR', 'BR-RS', 'BR-SC', 'BR-SE', 'BR-SP', 'BR-TO', 'IO-IO', 'BN-BE', 'BN-BM', 'BN-TE', 'BN-TU', 'BG-01', 'BG-02', 'BG-03', 'BG-04', 'BG-05', 'BG-06', 'BG-07', 'BG-08', 'BG-09', 'BG-10', 'BG-11', 'BG-12', 'BG-13', 'BG-14', 'BG-15', 'BG-16', 'BG-17', 'BG-18', 'BG-19', 'BG-20', 'BG-21', 'BG-22', 'BG-23', 'BG-24', 'BG-25', 'BG-26', 'BG-27', 'BG-28', 'BF-01', 'BF-02', 'BF-03', 'BF-04', 'BF-05', 'BF-06', 'BF-07', 'BF-08', 'BF-09', 'BF-10', 'BF-11', 'BF-12', 'BF-13', 'BF-BAL', 'BF-BAM', 'BF-BAN', 'BF-BAZ', 'BF-BGR', 'BF-BLG', 'BF-BLK', 'BF-COM', 'BF-GAN', 'BF-GNA', 'BF-GOU', 'BF-HOU', 'BF-IOB', 'BF-KAD', 'BF-KEN', 'BF-KMD', 'BF-KMP', 'BF-KOP', 'BF-KOS', 'BF-KOT', 'BF-KOW', 'BF-LER', 'BF-LOR', 'BF-MOU', 'BF-NAM', 'BF-NAO', 'BF-NAY', 'BF-NOU', 'BF-OUB', 'BF-OUD', 'BF-PAS', 'BF-PON', 'BF-SEN', 'BF-SIS', 'BF-SMT', 'BF-SNG', 'BF-SOM', 'BF-SOR', 'BF-TAP', 'BF-TUI', 'BF-YAG', 'BF-YAT', 'BF-ZIR', 'BF-ZON', 'BF-ZOU', 'BI-BB', 'BI-BL', 'BI-BM', 'BI-BR', 'BI-CA', 'BI-CI', 'BI-GI', 'BI-KI', 'BI-KR', 'BI-KY', 'BI-MA', 'BI-MU', 'BI-MW', 'BI-MY', 'BI-NG', 'BI-RT', 'BI-RY', 'KH-10', 'KH-11', 'KH-12', 'KH-13', 'KH-14', 'KH-15', 'KH-16', 'KH-17', 'KH-18', 'KH-19', 'KH-1', 'KH-20', 'KH-21', 'KH-22', 'KH-23', 'KH-24', 'KH-2', 'KH-3', 'KH-4', 'KH-5', 'KH-6', 'KH-7', 'KH-8', 'KH-9', 'CM-AD', 'CM-CE', 'CM-EN', 'CM-ES', 'CM-LT', 'CM-NO', 'CM-NW', 'CM-OU', 'CM-SU', 'CM-SW', 'CA-AB', 'CA-BC', 'CA-MB', 'CA-NB', 'CA-NL', 'CA-NS', 'CA-NT', 'CA-NU', 'CA-ON', 'CA-PE', 'CA-QC', 'CA-SK', 'CA-YT', 'CV-B', 'CV-BR', 'CV-BV', 'CV-CA', 'CV-CF', 'CV-CR', 'CV-MA', 'CV-MO', 'CV-PA', 'CV-PN', 'CV-PR', 'CV-RB', 'CV-RG', 'CV-RS', 'CV-SD', 'CV-SF', 'CV-S', 'CV-SL', 'CV-SM', 'CV-SO', 'CV-SS', 'CV-SV', 'CV-TA', 'CV-TS', 'KY-KY', 'CF-AC', 'CF-BB', 'CF-BGF', 'CF-BK', 'CF-HK', 'CF-HM', 'CF-HS', 'CF-KB', 'CF-KG', 'CF-LB', 'CF-MB', 'CF-MP', 'CF-NM', 'CF-OP', 'CF-SE', 'CF-UK', 'CF-VK', 'TD-BA', 'TD-BG', 'TD-BO', 'TD-CB', 'TD-EE', 'TD-EO', 'TD-GR', 'TD-HL', 'TD-KA', 'TD-LC', 'TD-LO', 'TD-LR', 'TD-MA', 'TD-MC', 'TD-ME', 'TD-MO', 'TD-ND', 'TD-OD', 'TD-SA', 'TD-SI', 'TD-TA', 'TD-TI', 'TD-WF', 'CL-AI', 'CL-AN', 'CL-AP', 'CL-AR', 'CL-AT', 'CL-BI', 'CL-CO', 'CL-LI', 'CL-LL', 'CL-LR', 'CL-MA', 'CL-ML', 'CL-RM', 'CL-TA', 'CL-VS', 'CN-11', 'CN-12', 'CN-13', 'CN-14', 'CN-15', 'CN-21', 'CN-22', 'CN-23', 'CN-31', 'CN-32', 'CN-33', 'CN-34', 'CN-35', 'CN-36', 'CN-37', 'CN-41', 'CN-42', 'CN-43', 'CN-44', 'CN-45', 'CN-46', 'CN-50', 'CN-51', 'CN-52', 'CN-53', 'CN-54', 'CN-61', 'CN-62', 'CN-63', 'CN-64', 'CN-65', 'CN-71', 'CN-91', 'CN-92', 'CX-CX', 'CC-CC', 'CO-AMA', 'CO-ANT', 'CO-ARA', 'CO-ATL', 'CO-BOL', 'CO-BOY', 'CO-CAL', 'CO-CAQ', 'CO-CAS', 'CO-CAU', 'CO-CES', 'CO-CHO', 'CO-COR', 'CO-CUN', 'CO-DC', 'CO-GUA', 'CO-GUV', 'CO-HUI', 'CO-LAG', 'CO-MAG', 'CO-MET', 'CO-NAR', 'CO-NSA', 'CO-PUT', 'CO-QUI', 'CO-RIS', 'CO-SAN', 'CO-SAP', 'CO-SUC', 'CO-TOL', 'CO-VAC', 'CO-VAU', 'CO-VID', 'KM-A', 'KM-G', 'KM-M', 'CG-11', 'CG-12', 'CG-13', 'CG-14', 'CG-15', 'CG-16', 'CG-2', 'CG-5', 'CG-7', 'CG-8', 'CG-9', 'CG-BZV', 'CD-BC', 'CD-BN', 'CD-EQ', 'CD-KA', 'CD-KE', 'CD-KN', 'CD-KW', 'CD-MA', 'CD-NK', 'CD-OR', 'CD-SK', 'CK-CK', 'CR-A', 'CR-C', 'CR-G', 'CR-H', 'CR-L', 'CR-P', 'CR-SJ', 'CI-01', 'CI-02', 'CI-03', 'CI-04', 'CI-05', 'CI-06', 'CI-07', 'CI-08', 'CI-09', 'CI-10', 'CI-11', 'CI-12', 'CI-13', 'CI-14', 'CI-15', 'CI-16', 'CI-17', 'CI-18', 'CI-19', 'HR-01', 'HR-02', 'HR-03', 'HR-04', 'HR-05', 'HR-06', 'HR-07', 'HR-08', 'HR-09', 'HR-10', 'HR-11', 'HR-12', 'HR-13', 'HR-14', 'HR-15', 'HR-16', 'HR-17', 'HR-18', 'HR-19', 'HR-20', 'HR-21', 'CU-01', 'CU-03', 'CU-04', 'CU-05', 'CU-06', 'CU-07', 'CU-08', 'CU-09', 'CU-10', 'CU-11', 'CU-12', 'CU-13', 'CU-14', 'CU-15', 'CU-16', 'CU-99', 'CW-CW', 'CY-01', 'CY-02', 'CY-03', 'CY-04', 'CY-05', 'CY-06', 'CZ-101', 'CZ-102', 'CZ-103', 'CZ-104', 'CZ-105', 'CZ-106', 'CZ-107', 'CZ-108', 'CZ-109', 'CZ-10A', 'CZ-10B', 'CZ-10C', 'CZ-10D', 'CZ-10E', 'CZ-10F', 'CZ-201', 'CZ-202', 'CZ-203', 'CZ-204', 'CZ-205', 'CZ-206', 'CZ-207', 'CZ-208', 'CZ-209', 'CZ-20A', 'CZ-20B', 'CZ-20C', 'CZ-311', 'CZ-312', 'CZ-313', 'CZ-314', 'CZ-315', 'CZ-316', 'CZ-317', 'CZ-321', 'CZ-322', 'CZ-323', 'CZ-324', 'CZ-325', 'CZ-326', 'CZ-327', 'CZ-411', 'CZ-412', 'CZ-413', 'CZ-421', 'CZ-422', 'CZ-423', 'CZ-424', 'CZ-425', 'CZ-426', 'CZ-427', 'CZ-511', 'CZ-512', 'CZ-513', 'CZ-514'], 'http://unstats.un.org/unsd/methods/m49/m49.htm'=>['001', '002', '014', '017', '015', '018', '011', '019', '419', '029', '013', '005', '021', '142', '143', '030', '034', '035', '145', '150', '151', '154', '039', '155', '009', '053', '054', '057', '061']}, 'type'=>'CodeableConcept', 'path'=>'ExampleScenario.jurisdiction', 'min'=>0, 'max'=>Float::INFINITY, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/jurisdiction'}},
        'purpose' => {'type'=>'markdown', 'path'=>'ExampleScenario.purpose', 'min'=>0, 'max'=>1},
        'copyright' => {'type'=>'markdown', 'path'=>'ExampleScenario.copyright', 'min'=>0, 'max'=>1},
        'copyrightLabel' => {'type'=>'string', 'path'=>'ExampleScenario.copyrightLabel', 'min'=>0, 'max'=>1},
        'actor' => {'type'=>'ExampleScenario::Actor', 'path'=>'ExampleScenario.actor', 'min'=>0, 'max'=>Float::INFINITY},
        'instance' => {'type'=>'ExampleScenario::Instance', 'path'=>'ExampleScenario.instance', 'min'=>0, 'max'=>Float::INFINITY},
        'process' => {'type'=>'ExampleScenario::Process', 'path'=>'ExampleScenario.process', 'min'=>0, 'max'=>Float::INFINITY}
      }

      class Actor < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Actor.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Actor.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Actor.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'key' => {'type'=>'string', 'path'=>'Actor.key', 'min'=>1, 'max'=>1},
          'type' => {'valid_codes'=>{'http://hl7.org/fhir/examplescenario-actor-type'=>['person', 'system']}, 'type'=>'code', 'path'=>'Actor.type', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'required', 'uri'=>'http://hl7.org/fhir/ValueSet/examplescenario-actor-type'}},
          'title' => {'type'=>'string', 'path'=>'Actor.title', 'min'=>1, 'max'=>1},
          'description' => {'type'=>'markdown', 'path'=>'Actor.description', 'min'=>0, 'max'=>1}
        }

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :key               # 1-1 string
        attr_accessor :type              # 1-1 code
        attr_accessor :title             # 1-1 string
        attr_accessor :description       # 0-1 markdown
      end

      class Instance < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        MULTIPLE_TYPES = {
          'structureProfile' => ['canonical', 'uri']
        }
        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Instance.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Instance.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Instance.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'key' => {'type'=>'string', 'path'=>'Instance.key', 'min'=>1, 'max'=>1},
          'structureType' => {'valid_codes'=>{'http://hl7.org/fhir/fhir-types'=>['Account', 'ActivityDefinition', 'ActorDefinition', 'AdministrableProductDefinition', 'AdverseEvent', 'AllergyIntolerance', 'Appointment', 'AppointmentResponse', 'ArtifactAssessment', 'AuditEvent', 'Basic', 'Binary', 'BiologicallyDerivedProduct', 'BiologicallyDerivedProductDispense', 'BodyStructure', 'Bundle', 'CapabilityStatement', 'CarePlan', 'CareTeam', 'ChargeItem', 'ChargeItemDefinition', 'Citation', 'Claim', 'ClaimResponse', 'ClinicalImpression', 'ClinicalUseDefinition', 'CodeSystem', 'Communication', 'CommunicationRequest', 'CompartmentDefinition', 'Composition', 'ConceptMap', 'Condition', 'ConditionDefinition', 'Consent', 'Contract', 'Coverage', 'CoverageEligibilityRequest', 'CoverageEligibilityResponse', 'DetectedIssue', 'Device', 'DeviceAssociation', 'DeviceDefinition', 'DeviceDispense', 'DeviceMetric', 'DeviceRequest', 'DeviceUsage', 'DiagnosticReport', 'DocumentReference', 'Encounter', 'EncounterHistory', 'Endpoint', 'EnrollmentRequest', 'EnrollmentResponse', 'EpisodeOfCare', 'EventDefinition', 'Evidence', 'EvidenceReport', 'EvidenceVariable', 'ExampleScenario', 'ExplanationOfBenefit', 'FamilyMemberHistory', 'Flag', 'FormularyItem', 'GenomicStudy', 'Goal', 'GraphDefinition', 'Group', 'GuidanceResponse', 'HealthcareService', 'ImagingSelection', 'ImagingStudy', 'Immunization', 'ImmunizationEvaluation', 'ImmunizationRecommendation', 'ImplementationGuide', 'Ingredient', 'InsurancePlan', 'InventoryItem', 'InventoryReport', 'Invoice', 'Library', 'Linkage', 'List', 'Location', 'ManufacturedItemDefinition', 'Measure', 'MeasureReport', 'Medication', 'MedicationAdministration', 'MedicationDispense', 'MedicationKnowledge', 'MedicationRequest', 'MedicationStatement', 'MedicinalProductDefinition', 'MessageDefinition', 'MessageHeader', 'MolecularSequence', 'NamingSystem', 'NutritionIntake', 'NutritionOrder', 'NutritionProduct', 'Observation', 'ObservationDefinition', 'OperationDefinition', 'OperationOutcome', 'Organization', 'OrganizationAffiliation', 'PackagedProductDefinition', 'Parameters', 'Patient', 'PaymentNotice', 'PaymentReconciliation', 'Permission', 'Person', 'PlanDefinition', 'Practitioner', 'PractitionerRole', 'Procedure', 'Provenance', 'Questionnaire', 'QuestionnaireResponse', 'RegulatedAuthorization', 'RelatedPerson', 'RequestOrchestration', 'Requirements', 'ResearchStudy', 'ResearchSubject', 'RiskAssessment', 'Schedule', 'SearchParameter', 'ServiceRequest', 'Slot', 'Specimen', 'SpecimenDefinition', 'StructureDefinition', 'StructureMap', 'Subscription', 'SubscriptionStatus', 'SubscriptionTopic', 'Substance', 'SubstanceDefinition', 'SubstanceNucleicAcid', 'SubstancePolymer', 'SubstanceProtein', 'SubstanceReferenceInformation', 'SubstanceSourceMaterial', 'SupplyDelivery', 'SupplyRequest', 'Task', 'TerminologyCapabilities', 'TestPlan', 'TestReport', 'TestScript', 'Transport', 'ValueSet', 'VerificationResult', 'VisionPrescription'], 'http://terminology.hl7.org/CodeSystem/v2-0354'=>['OMD_O01', 'OMN_O01', 'OMS_O01', 'ORD_O02', 'ORN_O02', 'ORS_O02', 'RDO_O01', 'RRO_O02', 'ACK', 'ADR_A19', 'ADT_A01', 'ADT_A02', 'ADT_A03', 'ADT_A05', 'ADT_A06', 'ADT_A09', 'ADT_A12', 'ADT_A15', 'ADT_A16', 'ADT_A17', 'ADT_A28', 'ADT_A18', 'ADT_A20', 'ADT_A21', 'ADT_A24', 'ADT_A30', 'ADT_A37', 'ADT_A38', 'ADT_A39', 'ARD_A19', 'ADT_A43', 'ADT_A44', 'ADT_A45', 'ADT_A50', 'ADT_A52', 'ADT_A54', 'ADT_A60', 'ADT_A61', 'BAR_P01', 'BAR_P02', 'BAR_P05', 'BAR_P06', 'BAR_P10', 'BAR_P12', 'BRP_030', 'MFD_P09', 'BPS_O29', 'BRP_O30', 'BRT_O32', 'BTS_O31', 'CCF_I22', 'CCI_I22', 'CCM_I21', 'CCQ_I19', 'DSR_Q01', 'DSR_P04', 'CCR_I16', 'DSR_Q03', 'CCU_I20', 'CQU_I19', 'CRM_C01', 'CSU_C09', 'ORF_R02', 'DBC_O41', 'EDR_R07', 'DBC_O42', 'EQQ_Q04', 'ORM_Q06', 'DEL_O46', 'ERP_R09', 'DEO_O45', 'ORR_Q06', 'DER_O44', 'DFT_P03', 'DFT_P11', 'DOC_T12', 'DPR_O48', 'DRC_O47', 'DRG_O43', 'PIN_I07', 'EAC_U07', 'MFD_MFA', 'EAN_U09', 'EAR_U08', 'EHC_E01', 'EHC_E02', 'EHC_E04', 'EHC_E10', 'EHC_E12', 'EHC_E13', 'EHC_E15', 'EHC_E20', 'EHC_E21', 'EHC_E24', 'ESR_U02', 'ESU_U01', 'INR_U06', 'RAS_O01', 'INU_U05', 'RAS_O02', 'INV_U14', 'LSU_U12', 'MDM_T01', 'MDM_T02', 'MFK_M01', 'MFN_M01', 'RDS_O01', 'MFN_M02', 'MFN_M03', 'MFN_M04', 'MFN_M05', 'RGV_O01', 'MFN_M06', 'MFN_M07', 'MFN_M08', 'RPI_I0I', 'MFN_M09', 'MFN_M10', 'MFN_M11', 'MFN_M12', 'RQC_I06', 'MFN_M13', 'RQI_I0I', 'MFN_M15', 'MFN_M16', 'MFN_M17', 'MFN_M18', 'RRD_O02', 'MFQ_M01', 'RRE_O02', 'MFR_M01', 'RRG_O02', 'MFR_M04', 'MFR_M05', 'MFR_M06', 'MFR_M07', 'NMD_N02', 'NMQ_N01', 'NMR_N01', 'ORU_R31', 'SRM_T12', 'OMB_O27', 'ORU_R32', 'OMD_O03', 'SRR_T12', 'OMG_O19', 'OMI_O23', 'OML_O21', 'OML_O33', 'OML_O35', 'OML_O39', 'OML_O59', 'OMN_O07', 'OMP_O09', 'OMQ_O42', 'OMQ_O57', 'OMS_O05', 'OPL_O37', 'OPR_O38', 'OPU_R25', 'ORA_R33', 'ORA_R41', 'ORB_O28', 'ORD_O04', 'ORF_R04', 'ORG_O20', 'ORI_O24', 'ORL_O22', 'ORL_O34', 'ORL_O36', 'ORL_O40', 'ORL_O41', 'QRY_P04', 'ORL_O42', 'ORL_O43', 'ORL_O44', 'ORL_O53', 'ORL_O54', 'ORL_O55', 'ORL_O56', 'ORM_O01', 'ORN_O08', 'ORP_O10', 'ORR_O02', 'RDE_O01', 'ORS_O06', 'ORU_R01', 'ORU_R30', 'ORU_W01', 'ORX_O43', 'ORX_O58', 'OSM_R26', 'OSQ_Q06', 'OSR_Q06', 'OSU_O41', 'OSU_O51', 'OSU_O52', 'OUL_R21', 'OUL_R22', 'OUL_R23', 'OUL_R24', 'PEX_P07', 'PGL_PC6', 'PMU_B01', 'RQQ_Q09', 'RRA_O02', 'PMU_B03', 'PMU_B04', 'PMU_B07', 'PMU_B08', 'PPG_PCG', 'PPP_PCB', 'PPR_PC1', 'PPT_PCL', 'PPV_PCA', 'PRR_PC5', 'PTR_PCF', 'QBP_E03', 'QBP_E22', 'QBP_O33', 'QBP_O34', 'SPQ_Q08', 'QBP_Q11', 'RDY_K11', 'QBP_Q13', 'QBP_Q15', 'QBP_Q21', 'QCK_Q02', 'QCN_J01', 'RSP_K24', 'QRF_W02', 'QRY_A19', 'QRY_PC4', 'TBR_R08', 'QRY_Q01', 'TBR_R09', 'QRY_Q02', 'QRY_R02', 'QRY_T12', 'VQQ_Q07', 'QSB_Q16', 'QVR_Q17', 'RAR_RAR', 'RAS_O17', 'RCI_I05', 'RCL_I06', 'RDE_O11', 'RDE_O49', 'RDR_RDR', 'RDS_O13', 'RDY_K15', 'REF_I12', 'RER_RER', 'RGR_RGR', 'RGV_O15', 'ROR_ROR', 'RPA_I08', 'RPI_I01', 'RPI_I04', 'RPL_I02', 'RPR_I03', 'RQA_I08', 'RQC_I05', 'RQI_I01', 'RQP_I04', 'RRA_O18', 'RRD_O14', 'RRE_O12', 'RRE_O50', 'RRG_O16', 'RRI_I12', 'RSP_E03', 'RSP_E22', 'RSP_K11', 'RSP_K21', 'RSP_K22', 'RSP_K23', 'RSP_K25', 'RSP_K31', 'RSP_K32', 'RSP_O33', 'RSP_O34', 'RSP_Q11', 'RTB_K13', 'SDR_S31', 'SDR_S32', 'SET_S38', 'SET_S40', 'SET_S41', 'SET_S45', 'SET_S50', 'SET_S52', 'SIU_S12', 'SLR_S28', 'SQM_S25', 'SQR_S25', 'SRM_S01', 'SRR_S01', 'QBP_Z73', 'SSR_U04', 'RSP_Z82', 'SSU_U03', 'RSP_Z86', 'STC_S33', 'RSP_Z88', 'SUR_P09', 'RSP_Z90', 'TCU_U10', 'RTB_Knn', 'UDM_Q05', 'RTB_Z74', 'VXQ_V01', 'QBP_Qnn', 'VXR_V03', 'VXU_V04', 'VXX_V02']}, 'type'=>'Coding', 'path'=>'Instance.structureType', 'min'=>1, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/examplescenario-instance-type'}},
          'structureVersion' => {'type'=>'string', 'path'=>'Instance.structureVersion', 'min'=>0, 'max'=>1},
          'structureProfileCanonical' => {'type'=>'canonical', 'path'=>'Instance.structureProfile[x]', 'min'=>0, 'max'=>1},
          'structureProfileUri' => {'type'=>'uri', 'path'=>'Instance.structureProfile[x]', 'min'=>0, 'max'=>1},
          'title' => {'type'=>'string', 'path'=>'Instance.title', 'min'=>1, 'max'=>1},
          'description' => {'type'=>'markdown', 'path'=>'Instance.description', 'min'=>0, 'max'=>1},
          'content' => {'type'=>'Reference', 'path'=>'Instance.content', 'min'=>0, 'max'=>1},
          'version' => {'type'=>'ExampleScenario::Instance::Version', 'path'=>'Instance.version', 'min'=>0, 'max'=>Float::INFINITY},
          'containedInstance' => {'type'=>'ExampleScenario::Instance::ContainedInstance', 'path'=>'Instance.containedInstance', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Version < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Version.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Version.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Version.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'key' => {'type'=>'string', 'path'=>'Version.key', 'min'=>1, 'max'=>1},
            'title' => {'type'=>'string', 'path'=>'Version.title', 'min'=>1, 'max'=>1},
            'description' => {'type'=>'markdown', 'path'=>'Version.description', 'min'=>0, 'max'=>1},
            'content' => {'type'=>'Reference', 'path'=>'Version.content', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :key               # 1-1 string
          attr_accessor :title             # 1-1 string
          attr_accessor :description       # 0-1 markdown
          attr_accessor :content           # 0-1 Reference()
        end

        class ContainedInstance < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'ContainedInstance.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'ContainedInstance.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'ContainedInstance.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'instanceReference' => {'type'=>'string', 'path'=>'ContainedInstance.instanceReference', 'min'=>1, 'max'=>1},
            'versionReference' => {'type'=>'string', 'path'=>'ContainedInstance.versionReference', 'min'=>0, 'max'=>1}
          }

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :instanceReference # 1-1 string
          attr_accessor :versionReference  # 0-1 string
        end

        attr_accessor :id                        # 0-1 string
        attr_accessor :extension                 # 0-* [ Extension ]
        attr_accessor :modifierExtension         # 0-* [ Extension ]
        attr_accessor :key                       # 1-1 string
        attr_accessor :structureType             # 1-1 Coding
        attr_accessor :structureVersion          # 0-1 string
        attr_accessor :structureProfileCanonical # 0-1 canonical
        attr_accessor :structureProfileUri       # 0-1 uri
        attr_accessor :title                     # 1-1 string
        attr_accessor :description               # 0-1 markdown
        attr_accessor :content                   # 0-1 Reference()
        attr_accessor :version                   # 0-* [ ExampleScenario::Instance::Version ]
        attr_accessor :containedInstance         # 0-* [ ExampleScenario::Instance::ContainedInstance ]
      end

      class Process < Model
        include FHIR::Hashable
        include FHIR::Json
        include FHIR::Xml

        METADATA = {
          'id' => {'type'=>'string', 'path'=>'Process.id', 'min'=>0, 'max'=>1},
          'extension' => {'type'=>'Extension', 'path'=>'Process.extension', 'min'=>0, 'max'=>Float::INFINITY},
          'modifierExtension' => {'type'=>'Extension', 'path'=>'Process.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
          'title' => {'type'=>'string', 'path'=>'Process.title', 'min'=>1, 'max'=>1},
          'description' => {'type'=>'markdown', 'path'=>'Process.description', 'min'=>0, 'max'=>1},
          'preConditions' => {'type'=>'markdown', 'path'=>'Process.preConditions', 'min'=>0, 'max'=>1},
          'postConditions' => {'type'=>'markdown', 'path'=>'Process.postConditions', 'min'=>0, 'max'=>1},
          'step' => {'type'=>'ExampleScenario::Process::Step', 'path'=>'Process.step', 'min'=>0, 'max'=>Float::INFINITY}
        }

        class Step < Model
          include FHIR::Hashable
          include FHIR::Json
          include FHIR::Xml

          METADATA = {
            'id' => {'type'=>'string', 'path'=>'Step.id', 'min'=>0, 'max'=>1},
            'extension' => {'type'=>'Extension', 'path'=>'Step.extension', 'min'=>0, 'max'=>Float::INFINITY},
            'modifierExtension' => {'type'=>'Extension', 'path'=>'Step.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
            'number' => {'type'=>'string', 'path'=>'Step.number', 'min'=>0, 'max'=>1},
            'process' => {'type'=>'ExampleScenario::Process', 'path'=>'Step.process', 'min'=>0, 'max'=>1},
            'workflow' => {'type'=>'canonical', 'path'=>'Step.workflow', 'min'=>0, 'max'=>1},
            'operation' => {'type'=>'ExampleScenario::Process::Step::Operation', 'path'=>'Step.operation', 'min'=>0, 'max'=>1},
            'alternative' => {'type'=>'ExampleScenario::Process::Step::Alternative', 'path'=>'Step.alternative', 'min'=>0, 'max'=>Float::INFINITY},
            'pause' => {'type'=>'boolean', 'path'=>'Step.pause', 'min'=>0, 'max'=>1}
          }

          class Operation < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'type'=>'string', 'path'=>'Operation.id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Operation.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Operation.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'type' => {'valid_codes'=>{'http://hl7.org/fhir/restful-interaction'=>['read', 'vread', 'update', 'patch', 'delete', 'history', 'history-instance', 'history-type', 'history-system', 'create', 'search', 'search-type', 'search-system', 'search-compartment', 'capabilities', 'transaction', 'batch', 'operation']}, 'type'=>'Coding', 'path'=>'Operation.type', 'min'=>0, 'max'=>1, 'binding'=>{'strength'=>'extensible', 'uri'=>'http://hl7.org/fhir/ValueSet/testscript-operation-codes'}},
              'title' => {'type'=>'string', 'path'=>'Operation.title', 'min'=>1, 'max'=>1},
              'initiator' => {'type'=>'string', 'path'=>'Operation.initiator', 'min'=>0, 'max'=>1},
              'receiver' => {'type'=>'string', 'path'=>'Operation.receiver', 'min'=>0, 'max'=>1},
              'description' => {'type'=>'markdown', 'path'=>'Operation.description', 'min'=>0, 'max'=>1},
              'initiatorActive' => {'type'=>'boolean', 'path'=>'Operation.initiatorActive', 'min'=>0, 'max'=>1},
              'receiverActive' => {'type'=>'boolean', 'path'=>'Operation.receiverActive', 'min'=>0, 'max'=>1},
              'request' => {'type'=>'ExampleScenario::Instance::ContainedInstance', 'path'=>'Operation.request', 'min'=>0, 'max'=>1},
              'response' => {'type'=>'ExampleScenario::Instance::ContainedInstance', 'path'=>'Operation.response', 'min'=>0, 'max'=>1}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :type              # 0-1 Coding
            attr_accessor :title             # 1-1 string
            attr_accessor :initiator         # 0-1 string
            attr_accessor :receiver          # 0-1 string
            attr_accessor :description       # 0-1 markdown
            attr_accessor :initiatorActive   # 0-1 boolean
            attr_accessor :receiverActive    # 0-1 boolean
            attr_accessor :request           # 0-1 ExampleScenario::Instance::ContainedInstance
            attr_accessor :response          # 0-1 ExampleScenario::Instance::ContainedInstance
          end

          class Alternative < Model
            include FHIR::Hashable
            include FHIR::Json
            include FHIR::Xml

            METADATA = {
              'id' => {'type'=>'string', 'path'=>'Alternative.id', 'min'=>0, 'max'=>1},
              'extension' => {'type'=>'Extension', 'path'=>'Alternative.extension', 'min'=>0, 'max'=>Float::INFINITY},
              'modifierExtension' => {'type'=>'Extension', 'path'=>'Alternative.modifierExtension', 'min'=>0, 'max'=>Float::INFINITY},
              'title' => {'type'=>'string', 'path'=>'Alternative.title', 'min'=>1, 'max'=>1},
              'description' => {'type'=>'markdown', 'path'=>'Alternative.description', 'min'=>0, 'max'=>1},
              'step' => {'type'=>'ExampleScenario::Process::Step', 'path'=>'Alternative.step', 'min'=>0, 'max'=>Float::INFINITY}
            }

            attr_accessor :id                # 0-1 string
            attr_accessor :extension         # 0-* [ Extension ]
            attr_accessor :modifierExtension # 0-* [ Extension ]
            attr_accessor :title             # 1-1 string
            attr_accessor :description       # 0-1 markdown
            attr_accessor :step              # 0-* [ ExampleScenario::Process::Step ]
          end

          attr_accessor :id                # 0-1 string
          attr_accessor :extension         # 0-* [ Extension ]
          attr_accessor :modifierExtension # 0-* [ Extension ]
          attr_accessor :number            # 0-1 string
          attr_accessor :process           # 0-1 ExampleScenario::Process
          attr_accessor :workflow          # 0-1 canonical
          attr_accessor :operation         # 0-1 ExampleScenario::Process::Step::Operation
          attr_accessor :alternative       # 0-* [ ExampleScenario::Process::Step::Alternative ]
          attr_accessor :pause             # 0-1 boolean
        end

        attr_accessor :id                # 0-1 string
        attr_accessor :extension         # 0-* [ Extension ]
        attr_accessor :modifierExtension # 0-* [ Extension ]
        attr_accessor :title             # 1-1 string
        attr_accessor :description       # 0-1 markdown
        attr_accessor :preConditions     # 0-1 markdown
        attr_accessor :postConditions    # 0-1 markdown
        attr_accessor :step              # 0-* [ ExampleScenario::Process::Step ]
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
      attr_accessor :date                   # 0-1 dateTime
      attr_accessor :publisher              # 0-1 string
      attr_accessor :contact                # 0-* [ ContactDetail ]
      attr_accessor :description            # 0-1 markdown
      attr_accessor :useContext             # 0-* [ UsageContext ]
      attr_accessor :jurisdiction           # 0-* [ CodeableConcept ]
      attr_accessor :purpose                # 0-1 markdown
      attr_accessor :copyright              # 0-1 markdown
      attr_accessor :copyrightLabel         # 0-1 string
      attr_accessor :actor                  # 0-* [ ExampleScenario::Actor ]
      attr_accessor :instance               # 0-* [ ExampleScenario::Instance ]
      attr_accessor :process                # 0-* [ ExampleScenario::Process ]

      def resourceType
        'ExampleScenario'
      end
    end
  end
end