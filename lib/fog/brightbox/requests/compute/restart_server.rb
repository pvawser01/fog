module Fog
  module Brightbox
    class Compute
      class Real

        def restart_server(identifier, options = {})
          return nil if identifier.nil? || identifier == ""
          request(
            :expects  => [202],
            :method   => 'POST',
            :path     => "/1.0/servers/#{identifier}/restart",
            :headers  => {"Content-Type" => "application/json"},
            :body     => options.to_json
          )
        end

      end

      class Mock

        def restart_server(identifier, options = {})
          Fog::Mock.not_implemented
        end

      end
    end
  end
end