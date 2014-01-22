# Changelog

A list of basic changes associated with each version. Versions are updated using the [Semantic Versioning](http://semver.org/) system.

#### v0.6.0 (2014-01-22)
  * Add some basic typography styles for headings

#### v0.5.0 (2014-01-22)
  * Add a separate variable for the proposition title so an app can use different content in <title> and header

#### v0.4.0 (2014-01-16)
  * Add support for boilerplate to auto add path for feedback form

#### v0.3.1 (2014-01-08)
  * Bump govuk_frontend_toolkit to v0.39.0

#### v0.3.0 (2014-01-07)
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