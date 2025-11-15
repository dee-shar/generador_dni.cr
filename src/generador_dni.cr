require "json"
require "http/client"

class GeneradorDni
  def initialize
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://api.generadordni.es")
    @http_client = HTTP::Client.new(uri)
  end

  def generate_bank_account() : JSON::Any
    JSON.parse(@http_client.get("/bank/account", headers: @headers).body)
  end

  def generate_bank_card() : JSON::Any
    JSON.parse(@http_client.get("/bank/card", headers: @headers).body)
  end

  def generate_characters() : JSON::Any
    JSON.parse(@http_client.get("/text/characters", headers: @headers).body)
  end

  def generate_words() : JSON::Any
    JSON.parse(@http_client.get("/text/words", headers: @headers).body)
  end

  def generate_paragraphs() : JSON::Any
    JSON.parse(@http_client.get("/text/paragraphs", headers: @headers).body)
  end

  def generate_vin() : JSON::Any
    JSON.parse(@http_client.get("/vehicle/vin", headers: @headers).body)
  end

  def generate_profile() : JSON::Any
    JSON.parse(@http_client.get("/profiles/person", headers: @headers).body)
  end

  def generate_passport() : JSON::Any
    JSON.parse(@http_client.get("/person/passport", headers: @headers).body)
  end

  def generate_email() : JSON::Any
    JSON.parse(@http_client.get("/person/email", headers: @headers).body)
  end

  def generate_password() : JSON::Any
    JSON.parse(@http_client.get("/person/password", headers: @headers).body)
  end

  def generate_username() : JSON::Any
    JSON.parse(@http_client.get("/person/username", headers: @headers).body)
  end

  def generate_vouchers() : JSON::Any
    JSON.parse(@http_client.get("/voucher/voucher", headers: @headers).body)
  end

  def generate_imei() : JSON::Any
    JSON.parse(@http_client.get("/misc/imei", headers: @headers).body)
  end
end
