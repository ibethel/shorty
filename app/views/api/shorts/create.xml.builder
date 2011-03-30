xml.instruct! :xml, :version => "1.0"
xml.response do
  xml.status_code 200
  xml.status_txt "OK"
  xml.data do
    xml.short do
      xml.expanded @short.expanded
      xml.hashed @short.contracted
      xml.clicks @short.visits.count 
      xml.created @short.created_at.to_s(:db)
    end
  end
end