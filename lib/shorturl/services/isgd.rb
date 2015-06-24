require 'shorturl/service'

module ShortURL
  module Services
    class Isgd < Service

      def initialize(creds = nil)
        super('is.gd')

        @method = :get
        @action = '/api.php'
        @field  = 'longurl'
      end

    end
  end
end
