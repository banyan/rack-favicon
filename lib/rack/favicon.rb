# coding: utf-8

require "rack/favicon/version"

module Rack
  class Favicon
    def initialize(app, options = {})
      @app     = app
      @options = options
    end

    def call(env)
      status, headers, response = @app.call(env)

      if env['PATH_INFO'] =~ (/favicon\.ico$/)
        if @options[:image]
          path = ::File.join(Dir.getwd, @options[:image])
        else
          path = ::File.expand_path('../favicon.ico', __FILE__)
        end
        response = [ ::File.open(path, 'rb') { |file| file.read } ]

        headers["Content-Length"] = response.join.bytesize.to_s
        headers["Content-Type"]   = "image/vnd.microsoft.icon"
      end
      [status, headers, response]
    end
  end
end
