function Pandoc(doc)

  -- metaを削除
  for key, value in pairs(doc.meta) do
    print("delete meta: ", key, ",", value, ",", pandoc.utils.type(value))
    doc.meta[key] = nil
  end

for key, value in pairs(doc.meta) do
  --print(key, ",", value, ",", pandoc.utils.type(value))
end

  return doc
end