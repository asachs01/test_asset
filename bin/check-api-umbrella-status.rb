#! /usr/bin/env ruby
# frozen_string_literal: false

##########################check-api-umbrella-status-on-demand.rb############################
require 'sensu-plugin/check/cli'

class MyCheck < Sensu::Plugin::Check::CLI

  check_name 'check-api-umbrella-status' # defaults to class name
  option :foo, :short => '-f' # Mixlib::CLI is included

  def run
    begin
      api_status = `curl -sk https://localhost/api-umbrella/v1/health/ | jq -r '.status' | tr -d '\n'`

      if  api_status == "yellow"
          message "API Umbrella status is yellow!"
          warning
      elsif api_status == "red"
          message "API Umbrella status is red!"
          critical
      elsif api_status == "green"
          message "API Umbrella status is green!"
          ok
      else
          message "API Umbrella status is " + api_status
          critical
      end
    rescue => err
      unknown "Exception: #{err}"
      err
    end
  end
end

