local xml = require("xml")
local data = require("data")
local fun = require("fun")

require("ext")

local head = {
   xml = "head",
   { xml = "title", "Declarative Programming Languages Comparison" },
   { xml = "link", rel = "stylesheet", href = "light.css" },
   { xml = "link", rel = "stylesheet", href = "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.3.1/styles/dark.min.css" },
   { xml = "script", src = "https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.3.1/highlight.min.js" },
}

for _, klass in fun.iter(data.languages):map(function(l) return l.class or l.id end):into_unique() do
   head[#head+1] = { xml = "script", src = ("https://cdnjs.cloudflare.com/ajax/libs/highlight.js/11.3.1/languages/%s.min.js"):format(klass) }
end

local headers = { xml = "tr", { xml = "th", "Syntax" } }
for _, lang in ipairs(data.languages) do
   headers[#headers+1] = { xml = "th", lang.name }
end
local thead = { xml = "thead", headers }

local tbody = { xml = "tbody" }
for _, syntax in ipairs(data.syntaxes) do
   local row = { xml = "tr", { xml = "th", syntax.name } }
   for _, lang in ipairs(data.languages) do
      local code = lang.syntaxes[syntax.id]
      local content
      if code then
         content = {
            xml = "pre",
            {
               xml = "code", class = ("language-%s"):format(lang.class or lang.id),
               xml.xml_escape(code)
            }
         }
      else
         content = "(None)"
      end
       row[#row+1] = {
         xml = "td",
         content
      }
   end
   tbody[#tbody+1] = row
end

local doc = xml.from_rapidxml {
   xml = "html",
   head,
   { xml = "body",
     { xml = "h1", "Declarative Programming Languages Comparison" },
     { xml = "table",
       thead,
       tbody
     },
     { xml = "script", "hljs.highlightAll();" }
   }
}

print(xml.tostring(doc, "", string.rep(" ", 4), nil, nil, function(s) return s end))
