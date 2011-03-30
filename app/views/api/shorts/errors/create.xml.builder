xml.instruct! :xml, :version => "1.0"
xml.response do
  xml.status_code 500
  xml.status_txt @short.errors.full_messages.first
end