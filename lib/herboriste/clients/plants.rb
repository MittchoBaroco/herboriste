module Herboriste
  class TrefleClient
    module Plants
      def plant(params={})
        raise ArgumentError, "You at least need to pass a query or an id" unless params.has_key? :query or params.has_key? :id
        query = "?q=#{params[:query]}" if params.has_key? :query
        query = "/#{params[:id]}" if params.has_key? :id

        answer = self.get("/plants" + query)
        return parse_body(answer[:body])
      end

      private

      def parse_body(raw_body)
        JSON.parse(raw_body)
      end
    end
  end
end
