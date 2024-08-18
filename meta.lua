
function Meta (meta)
--  print('type of metavalue `author`:', pandoc.utils.type(meta.author))

print("--------------------------")
print("-------Pandoc State-------")
print("--------------------------")


for key, value in pairs(PANDOC_STATE) do
  print(key, ",", value, ",", pandoc.utils.type(value))
end

print("--------------------------")
print("------Reader Option-------")
print("--------------------------")

for key, value in pairs(PANDOC_READER_OPTIONS) do
  print(key, ",", value, ",", pandoc.utils.type(value))
end

print("--------------------------")
print("------Writer Option-------")
print("--------------------------")


for key, value in pairs(PANDOC_WRITER_OPTIONS) do
  print(key, ",", value, ",", pandoc.utils.type(value))
end

print("--------------------------")
print("--------Variables---------")
print("--------------------------")

-- Variablesは
local s = PANDOC_WRITER_OPTIONS["variables"]
print(pandoc.utils.type(s))

for key, value in pairs(s) do
    print(key, ",", value, ",", pandoc.utils.type(value))
    for key2, value2 in pairs(value) do
        print("  ", key2, ",", value2, ",", pandoc.utils.type(value2))
    end
end

print("--------------------------")
print("---------Template---------")
print("--------------------------")
-- Templaeはnilかnon-nilかしか見れないとおもう。
local s = PANDOC_WRITER_OPTIONS["template"]
print(pandoc.utils.type(s))


print("--------------------------")
print("----------Meta------------")
print("--------------------------")

for key, value in pairs(meta) do
  print(key, ",", value, ",", pandoc.utils.type(value))
end

print("--------------------------")
print("----------Body------------")
print("--------------------------")


end

