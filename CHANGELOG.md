# AkamaiPowershell PowerShell Module
# Changelog

## 1.8.0 - (05/09/2022)

### AppSec, DataStream, Cloudlets & more
- Updated support for AppSec API 2021 and 2022 features
- (BREAKING) Datastream functions now default to Datastream 2. DS1 functions now with specific function names
- New Shared cloudlet functions for Cloudlets API v3
- Support for PM Includes feature, currently in beta
- (Potentially BREAKING) Errors thrown are now complete, without the ErrorDetails child object. This was only partially implemented previously, which caused thrown errors to be masked and generally of no use.
- Support for API Key Manager API, which handles API Key Collections and Throttling for API Gateway
- Support for Cloud Access Manager API
- Bugfixes for Netstorage and various other functions

## 1.7.0 - (24/03/2022)

### Signing, testing and general improvements
- Code is now digitally signed, allowing use on clients with ExecutionPolicy of RemoteSigned or AllSigned
- Pester testing added for Property, CPS, NSAPI, EdgeWorkers, EdgeKV & NetworkLists 
- CPS request formats are now updated to the latest versions
- New options for creation and editing of Network Lists
- Overhaul of Nestorage auth file parsing to support spacing, along with fixes to NS commands
- New endpoints to bring EdgeKV API support up to date, particularly in access tokens
- New endpoints to bring EdgeWorker API support up to date, including auth token endpoint support
- Added spacing support for .edgerc files
- Added Deactivate-Property function
- Updating PS 6+ thrown errors to throw entire error, rather than ErrorDetails sub-member. Change already made for PS 5
- Fixing incompatibility with PS 5 for Set-PropertyRuleTree, Set-PropertyHostnames, Merge-PropertyRuleTemplates and Invoke-AkamaiRestMethod

## 1.6.2 - (14/12/2021)

### Edgeworker improvements
Fixes for parametersetname bug which prevented new versions being created, as well as cmdletbinding, new Remove- functions and pester testing overhaul.

## 1.6.1 - (13/12/2021)

### Templating bugfixes
Fixes for a few minor issues in the new property template logic.

## 1.6.0 - (06/12/2021)

### Templates, AppSec, Cloudlets and more
Lots of new updates included in this release:

New PAPI template functions with optional depth to split your PAPI rules into multiple files
Splitting out EdgeRC parsing into a separate function so it can be reused in IDM
Policy name support for AppSec API
Improvements to cloudlets functions
Custom UserAgent so we can track who is using the module and which versions they are on
Fix for Get-CustomBehavior output

----

## 1.5.1 - (28/09/2021)

### Empty POST support, new cloudlet features
This release contains various bugfixes and minor new features. Primarily, it deals with POSTs with no body, which generated invalid signatures, as well as adding "latest" support in the cloudlets API.

----

## 1.5.0 - (20/08/2021)

### Simplified sections, new support options
NOTE: This release contains potentially breaking changes, specifically to the default values of the $Section parameter. Please read the following thoroughly before updating.

Changed default section to 'default' for all but CCU APIs
Added lots of new AppSec functions
Now support comments in .edgrc lines
New Cloudlet download function
Now support rolloutDuration in Image Manager
New Image Manager rollback function
Fixes for Netstorage on Powershell 5

----

## 1.4.1 - (15/06/2021)

### Bugfix for Powershell 5.x clients, minor functional updates
Major bug was causing multiple POSTs in the shared Invoke-AkamaiRestMethod function call for PS 5.x, which would then error out.

----

## 1.4.0 - (03/03/2021)

### TC, ChinaCDN, EdgeWorkers, EdgeKV, DS2, IVM
New APIs included:

Test Center
ChinaCDN
EdgeWorkers & EdgeKV
Datastream 2

Apis Updated:
Image & Video Manager - Total overhaul of new functions to support new endpoints. Includes support for account switching

----

## 1.3.1 - (15/12/2020)

### AppSec, Datastream and more
Various bugfixes and better sanitisation for query strings

----

## 1.3.0 - (25/11/2020)

### AppSec, Datastream and more
Added complete support for new AppSec endpoints, DS config API, Billing API, expanded LDS coverage and tons of other fixes

----

## 1.1.1 - (14/09/2020)

### Bug fixes for PAPI endpoints
Fixed issues with PAPI activation endpoint and corrected an issue with piping hostnames into Set-PropertyHostnames

----

## 1.1 - (07/09/2020)

### .edgerc validation
Various bugfixes, primarily now the ability to add -Debug to cmdlets which will be passed through to Invoke-AkamaiRestMethod which will output info on invalid .edgerc data

----

## 1.0.3 - (17/07/2020)

### Adding Datastream 'now' option
Minor new feature to convert "now" to current time minus 1 minute for Datastream, since it complains if the time is in the future.

----

## 1.0.2 - (01/07/2020)

### Bugfixes and new pipeline options
Corrects a major flaw in Set-PropertyRuleTree where the old $Rules variable was referenced incorrectly, and added more pipeline input options to cmdlets.

----

## 1.0.1 - (17/06/2020)

### Adding pipeline support
Adding pipeline support to Set-PropertyRuleTree as a canary for other cmdlets, and rearchitected .edgerc support

----

## 1.0.0  - (01/05/2020)

### Initial Gallery Release
Publishing to Powershell Gallery


