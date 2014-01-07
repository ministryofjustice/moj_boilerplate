# Changelog

A list of basic changes associated with each version. Versions are updated using the [Semantic Versioning](http://semver.org/) system.

#### v0.3.0 (2014-01-08)
  * Add govuk gem dependency to this gem rather than require them to be included in the app manually

#### v0.2.0 (2014-01-07)
  * Update JS to latest version of [HeisenbergJS](https://github.com/Heisenbergjs/heisenberg)
  * 'moj' object must now be initiated in your javascript with '$( moj.init );'
  * Checks for init() method so not all modules need to be initiated on load.

#### v0.1.0 (2013-12-11)
  * First minor release
  * Includes:
    * Base Rails nested layout view inheriting from GOV.UK template
    * Base styles used across MOJ Services
    * Initial set of JS modules imported from moj_frontend_toolkit
    * Shame folder for temporary files that are waiting to be added into GOV.UK repos