# Security Testing Dashboard <a href="https://scan.coverity.com/projects/automatesecurity-security-testing-dashboard">
  <img alt="Coverity Scan Build Status"
       src="https://img.shields.io/coverity/scan/12715.svg"/>
</a> [![Build Status](https://travis-ci.org/automatesecurity/security-testing-dashboard.svg?branch=master)](https://travis-ci.org/automatesecurity/security-testing-dashboard) [![GitHub issues](https://img.shields.io/github/issues/automatesecurity/security-testing-dashboard.svg)](https://github.com/automatesecurity/security-testing-dashboard/issues)

This project is a proof of concept for tracking 'projects' that have had security testing performed on them.

## Requirements
The Security Testing Dashboard was created with the following components and versions; deviations may prevent the dashboard from operating properly. 

* Ruby 2.4.0 (x86_64-darwin16)
* Rails v5.0.2
* Bootstrap 4 Alpha
* Highcharts JS
* jQuery
* Gems
  * HAML
  * Simple Form
  * Devise
  * Paperclip

## Usage
To use the Security Testing Dashboard, simply follow these steps:
* `git clone https://github.com/automatesecurity/security-testing-dashboard.git`
* `cd security-testing-dashboard`
* `rails s`
* Visit http://localhost:3000

*Note: The Security Testing Dashboard will be dockerized once core features are compelte*

## To-Do's

* DB Schema
* Implement authentication/authorization (Devise with LDAP support)
* Reporting

## User Stories
The following are high-level user stories for conceptualizing the features within the Security Testing Dashboard.

*   As a visitor
    > I want to be able to request access to the site
    > so I can notify the admin 

*   As a user
    > I want to view a list of projects assigned to my department
    > so I can view my department's metrics 

*   As a user
    > I want an option that will allow me to export my department's data
    > so I can leverage it outside of the application

*   As the admin of the site
    > I want to add and remove authorized users
    > so that I can control access to the site 