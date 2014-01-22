# Ministry of Justice Boilerplate

This repository is intended to provide a consistent starting point for Ministry of Justice services that are hosted on the gov.uk domain. It includes a basic shared layout and assets that are used across multiple projects.

**NOTE:** This repository is currently only for use in Ruby on Rails projects and requires the [GOV.UK Template](https://github.com/alphagov/govuk_template) and [GOV.UK Frontend Toolkit](https://github.com/alphagov/govuk_frontend_toolkit_gem) gems to be included first. See [installation](#installation) section for more detailed instructions.

------

[View Changelog](https://github.com/ministryofjustice/moj_boilerplate/blob/master/changelog.md)

## Installation

Currently only works with Ruby on Rails.

### Dependencies

The MOJ boilerplate requires two gems to be included for it to be able to work correctly. You **must** make sure you include the following gems before the `moj_boilerplate`:

    gem 'govuk_template'
    gem 'govuk_frontend_toolkit'

then, include the `moj_boilerplate` gem by pointing to this Github repository and a certain tag. For example:

    gem 'moj_boilerplate', git: 'https://github.com/ministryofjustice/moj_boilerplate.git', tag: 'v0.1.0'

### Config

In order for these files to work, you will need to set a number of variables in your application.rb for things like project title, current phase, etc. If you are encountering errors when trying to use the toolkit, make sure the following are set inside your class Application (example values from a current project provided):

    # Application Title (Populates <title>)
    config.app_title = ''
    # Proposition Title (Populates proposition header)
    config.proposition_title = ''
    # Current Phase (Sets the current phase and the colour of phase tags)
    # Presumed values: alpha, beta, live
    config.phase = ''
    # Product Type (Adds class to body based on service type)
    # Presumed values: information, service
    config.product_type = ''
    # Feedback URL (URL for feedback link in phase banner)
    # Use 'auto_add_path' for it to add a path link to the new_feedback route
    config.feedback_url = ''
    # Google Analytics ID (Tracking ID for the service)
    config.ga_id = ''

### Layout

The `moj_template` file extends the [GOV.UK Template layout](https://github.com/alphagov/govuk_template/blob/master/source/views/layouts/govuk_template.html.erb) file using [nested layouts](http://guides.rubyonrails.org/layouts_and_rendering.html#using-nested-layouts). The `moj_template` can be extended further by continuing to use nested layouts.

Add the following line to your `app/views/layouts/application.html.[haml/erb]` layout file to include the moj_template in your application.

    = render template: "layouts/moj_template"

### Assets

The MOJ Boilerpate comes with a basic set of styles and scripts that are used across multiple projects.

#### CSS

To include the boilerplate CSS, add this line to your `app/assets/stylesheets/application.css`:

    @import "moj-base";

Alternatively, you can add it using the Rails manifest method but the above method is the recommended use:

    *= require moj-base

#### JS

The boilerplate JS is written using a slightly adapted [Heisenberg.js](https://github.com/Heisenbergjs/heisenberg) methodology. A main MOJ namespace is created in moj.js and modules are created in separate files and added to this namespace on a project per project basis.

To include the MOJ namespace, add this line to your `app/assets/javascripts/application.js` file:

    //= require moj

To make use of any modules from the `modules/` folder, include the required module file **after** the `moj.js` file. Here's an example usage:

    //= require modules/moj.tabs.js
    //= require moj

For **documentation on Modules**, see the [wiki pages](https://github.com/ministryofjustice/moj_boilerplate/wiki).