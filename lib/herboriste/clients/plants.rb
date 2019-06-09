module Herboriste
  class TrefleClient
    module Plants
      def plant(params={})
        raise ArgumentError, "You at least need to pass a query or an id" unless params.has_key? :query or params.has_key? :id
        q = "?q=#{params[:query]}" if params.has_key? :query
        q = "/#{params[:id]}" if params.has_key? :id
        puts "/plants" + q
        return self.get("/plants" + q)
      end
    end
  end
end
