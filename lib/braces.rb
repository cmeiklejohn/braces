require "braces/version"

module Braces
  def template_dir(from)
    File.join(File.dirname(__FILE__),'..','templates',from.to_s)
  end
end
