# Fed Savings Bonds Redemption Tables 
To run a WebServices call to save the Savings Bond File localy then run a PowerShell script to format the file to match the manually downloaded format.

# Disclaimer
No Support and No Warranty are provided by SMA Technologies for this project and related material. The use of this project's files is on your own risk.

SMA Technologies assumes no liability for damage caused by the usage of any of the files offered here via this Github repository.

# Prerequisites
* Powershell 5.1+
* OpCon MSLSAM v19+
* OpCon Release v18.3+
* Opcon WebServices v20.4+

# Instructions
1. Create a Global Property called Path Bonds API File with the value being the path to where you want the file saved. I.E. C:\\ProgramData\\OpConxps\\Bonds
2. Create and/or verify Global Property of $SCHEDULE DATEYYYY-MM
3. Run a WebServices job using the FedBondsWebServicesTemplate.json
4. Run a Embedded Script using the OpConBondFile.ps1 passing in parmater  -SourceFile I.E. "C:\ProgramData\OpConxps\Bonds\Bonds.csv" 


# License
Copyright 2019 SMA Technologies

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

# Contributing
We love contributions, please read our [Contribution Guide](CONTRIBUTING.md) to get started!

# Code of Conduct
[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](code-of-conduct.md)
SMA Technologies has adopted the [Contributor Covenant](CODE_OF_CONDUCT.md) as its Code of Conduct, and we expect project participants to adhere to it. Please read the [full text](CODE_OF_CONDUCT.md) so that you can understand what actions will and will not be tolerated.
