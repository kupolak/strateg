# frozen_string_literal: true

require 'httparty'

# Request class for handling API requests
class Request
  def initialize(url, params = {}, headers = {})
    @url = url
    @params = params
    @headers = headers
    @lang = 'en'

    @response = send_request(url, params, headers)
  end

  def content
    @response.parsed_response
  end

  def content_type
    @response.content_type
  end

  def status_code
    @response.code
  end

  private

  def params_to_string(params)
    params.to_a.map { |k, v| "#{k}=#{v}" }.join('?')
  end

  def send_request(url, params, headers)
    url = "#{url}?#{params_to_string(params)}" if params
    url += "&lang=#{@lang}"
    HTTParty.get(url, headers)
  end
end
