module ShortURL
  module Services
    class Lns < Service

      def initialize(creds = nil)
        super("ln-s.net")

        @method = :get
        @action = "/home/api.jsp"
      end

      def on_body(body)
        URI.extract(body)[0]
      end

    end
  end
end
