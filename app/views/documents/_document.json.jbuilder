json.extract! document, :id, :titre, :genre, :created_at, :updated_at
json.url document_url(document, format: :json)
