module ShortURL
  module Services
    class Minilink < Service

      def initialize(creds = nil)
        super("minilink.org")

        @method = :get
      end

      def on_body(body)
        URI.extract(body)[-1]
      end

    end
  end
end
