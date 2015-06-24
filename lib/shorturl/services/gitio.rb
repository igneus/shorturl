require 'shorturl/service'

module ShortURL
  module Services
    class Gitio < Service

      def initialize(creds = nil)
        super('git.io')

        @code = 201
      end

      def on_response(response)
        response['location']
      end

    end
  end
end
