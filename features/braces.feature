Feature: Bootstrap a sinatra application

  In order to be able to make a lot of sinatra apps
  As a great developer
  I need a tool to let me bootstrap them quickly

  Background: 
    Given the directory "tmp/thingy" does not exist

  Scenario: Get help
    When I run `braces --help`
    Then the exit status should be 0
    And the output should contain:
    """
    Usage: braces [options] name
    
    Braces help you quickly bootstrap a sinatra application.
    
    Options:
            --force                      Overwrite files if they exist
    """

  Scenario: Bootstrap
    When I successfully run `braces tmp/thingy`
    Then the following directories should exist:
      |tmp/thingy        |         
      |tmp/thingy/lib    |      
      |tmp/thingy/spec   |
    And the following files should exist:
      |tmp/thingy/config.ru           |
      |tmp/thingy/Gemfile             |
      |tmp/thingy/Rakefile            |
      |tmp/thingy/lib/thingy.rb       |
      |tmp/thingy/spec/spec_helper.rb |
      |tmp/thingy/.rspec              |
    And the file "tmp/thingy/config.ru" should match /Thingy.app/
    And the file "tmp/thingy/spec/spec_helper.rb" should match /Thingy.app/
    And the file "tmp/thingy/lib/thingy.rb" should match /module Thingy/
