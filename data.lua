return {
   syntaxes = {
      {
         id = "null_values",
         name = "Null Values"
      },
      {
         id = "booleans",
         name = "Booleans"
      },
      {
         id = "integers",
         name = "Integers"
      },
      {
         id = "floats",
         name = "Floats"
      },
      {
         id = "strings",
         name = "Strings"
      },
      {
         id = "literal_strings",
         name = "Literal Strings"
      },
      {
         id = "multiline_strings",
         name = "Multiline Strings"
      },
      {
         id = "lists",
         name = "Lists"
      },
      {
         id = "maps",
         name = "Maps"
      },
      {
         id = "comments",
         name = "Comments"
      },
      {
         id = "datetimes",
         name = "Datetimes"
      },
      {
         id = "binary",
         name = "Binary"
      },
      {
         id = "functions",
         name = "Functions"
      },
      {
         id = "string_interpolation",
         name = "String Interpolation"
      },
      {
         id = "attributes",
         name = "Attributes"
      },
      {
         id = "typed_tags",
         name = "Typed Tags"
      },
      {
         id = "path_expressions",
         name = "Path Expressions"
      },
      {
         id = "other",
         name = "Other"
      },
      {
         id = "complete_example",
         name = "Complete Example"
      },
   },
   languages = {
      {
         id = "xml",
         name = "XML",
         syntaxes = {
            null_values = nil,
            booleans = nil,
            integers = nil,
            floats = nil,
            strings = [[
<span>I'm a string.</span>
<span>You can "quote" me.</span>
<span>Name&#x9;José&#xA;Loc&#x9;SF.</span>
]],
            literal_strings = nil,
            multiline_strings = [[
<p>
Roses are red
Violets are blue
</p>

<p>
The quick brown
fox jumps over
the lazy dog.
</p>
]],
lists = [[
<ul>
   <li>1</li>
   <li>2</li>
   <li>3</li>
</ul>

<ul>
   <li>Red</li>
   <li>Yellow</li>
   <li>Green</li>
</ul>
]],
maps = [[
<map>
   <entry key="key_1">Text</entry>
   <entry key="key_2">42</entry>
   <entry key="key_3">true</entry>
</map>
]],
comments = "<!-- Comment -->",
functions = nil,
string_interpolation = nil,
attributes = "<author email=\"peter@example.org\" active=\"true\">Peter Parker</author>",
meta_information = [[
<?xml version="1.0" encoding="UTF-8" ?>
]],
complete_example = [[
<?xml version="1.0" encoding="UTF-8" ?>
<invoice>
  <receipt>Oz-Ware Purchase Invoice</receipt>
  <date>2012-08-06</date>
  <customer>
    <first_name>Dorothy</first_name>
    <family_name>Gale</family_name>
  </customer>
  <items>
    <part_no>A4786</part_no>
    <descrip>Water Bucket (Filled)</descrip>
    <price>1.47</price>
    <quantity>4</quantity>
  </items>
  <items>
    <part_no>E1628</part_no>
    <descrip>High Heeled &quot;Ruby&quot; Slippers</descrip>
    <size>8</size>
    <price>133.7</price>
    <quantity>1</quantity>
  </items>
  <billTo>
    <street>
      123 Tornado Alley
      Suite 16
    </street>
    <city>East Centerville</city>
    <state>KS</state>
  </billTo>
  <shipTo>
    <street>
      123 Tornado Alley
      Suite 16
    </street>
    <city>East Centerville</city>
    <state>KS</state>
  </shipTo>
  <specialDelivery>Follow the Yellow Brick Road to the Emerald City. Pay no attention to the man behind the curtain.</specialDelivery>
</invoice>
]]
         }
      },
      {
         id = "json",
         name = "JSON",
         syntaxes = {
            null_values = "null",
            booleans = [[
true
false
]],
integers = [[
99
42
0
-17
]],
floats = [[
+1.0
3.1415
-0.01
]],
strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."
]],
literal_strings = nil,
multiline_strings = nil,
lists = [=[
[1, 2, 3]
["Red", "Yellow", "Green",] // Trailing comma
["Text", 42, true]
[[1, 2], [3, 4, 5]]
[[1, 2], ["a", "b", "c"]]
]=],
maps = [[
{
   "key_1": "Text",
   "key_2": 42,
   "key_3": true
}
]],
functions = nil,
string_interpolation = nil,
attributes = nil,
complete_example = [[
{
  "receipt": "Oz-Ware Purchase Invoice",
  "date": "2012-08-06",
  "customer": {
    "first_name": "Dorothy",
    "family_name": "Gale"
  },
  "items": [
    {
      "part_no": "A4786",
      "descrip": "Water Bucket (Filled)",
      "price": 1.47,
      "quantity": 4
    },
    {
      "part_no": "E1628",
      "descrip": "High Heeled \"Ruby\" Slippers",
      "size": 8,
      "price": 133.7,
      "quantity": 1
    }
  ],
  "billTo": {
    "street": "123 Tornado Alley\nSuite 16",
    "city": "East Centerville",
    "state": "KS"
  },
  "shipTo": {
    "street": "123 Tornado Alley\nSuite 16",
    "city": "East Centerville",
    "state": "KS"
  },
  "specialDelivery": "Follow the Yellow Brick Road to the Emerald City. Pay no attention to the man behind the curtain."
}
]]
         },
      },
      {
         id = "yaml",
         name = "YAML",
         syntaxes = {
            null_values = [[
null
~
]],
            booleans = [[
true
false
True
False
TRUE
FALSE
yes
no
Yes
No
YES
NO
on
off
On
Off
ON
OFF
y
n
Y
N
]],
integers = [[
+99
42
0
-17

# Grouping:
1_000
5_349_221
53_49_221
1_2_3_4_5

# Hexadecimal:
0xDEADBEEF
0xdeadbeef
0xdead_beef

# Octal:
001234567
0755

# Binary:
0b11010110
]],
floats = [[
# Fractional:
1.0
3.1415
-0.01

.inf
.Inf
.INF
-.inf
-.Inf
-.INF
.nan
.Nan
.NAN

# Exponent:
5e+22
1e06
-2E-2

# Both:
6.626e-34
]],
strings = [[
str1: "I'm a string."
str2: "You can \"quote\" me."
str3: "Name\tJos\u00E9\nLoc\tSF."
]],
literal_strings = nil,
multiline_strings = [[
str1: |
  Roses are red
  Violets are blue

str2: >+
  The quick brown
  fox jumps over
  the lazy dog.
]],
lists = [[
list1:
   - 1
   - 2
   - 3

list2:
   - Red
   - Yellow
   - Green

# Flow style:

list3: [ Text, 42, true ]
list4: [ [ 1, 2 ], [ 3, 4, 5 ] ]
list5: [ [ 1, 2 ], [ "a", "b", "c" ] ]
]],
maps = [[
map:
   key_1: Text
   key_2: 42
   key_3: true

# Block style:

map: {key_1: Text, key_2: 42, key_3: true}
]],
comments = [[
# Comment
]],
functions = nil,
string_interpolation = [[
# Ansible only

message: "Hello, {{name}}!"
]],
            datetimes = [[
1985-04-12T23:20:50.520Z
1985-04-12
]],
binary = [[
canonical: !!binary "sdf789GSfsb2+3324sf2"
generic: !binary |
 sdf789GSfsb2+3324sf2
]],
typed_tags = [[
TAG !foo! tag:clarkevans.com,2002:
---
invoice1: !foo!invoice
  ...
invoice2: !<tag:clarkevans.com,2002:invoice>
  ...

---
- !!str just a string
- !!str true          # also just a string
- !!map
  a: 1
  b: 2
- !!seq
  - a
  - b

---
# Ruby Psych
dice: !ruby/Object:Dice [3, 6]

---
# perl YAML::XS, YAML.pm, YAML::Syck (Dump and Load)
dice: !!perl/array:Dice [3, 6]

---
# perl YAML.pm, YAML::Syck (Load)
dice: !perl/array:Dice [3, 6]

---
# Pyyaml
dice: !!python/object/new:__main__.Dice
  - !!python/tuple [3, 6]
]],
attributes = nil,
complete_example = [[
---
receipt:     Oz-Ware Purchase Invoice
date:        2012-08-06
customer:
    first_name:   Dorothy
    family_name:  Gale

items:
    - part_no:   A4786
      descrip:   Water Bucket (Filled)
      price:     1.47
      quantity:  4

    - part_no:   E1628
      descrip:   High Heeled "Ruby" Slippers
      size:      8
      price:     133.7
      quantity:  1

bill-to:  &id001
    street: |
            123 Tornado Alley
            Suite 16
    city:   East Centerville
    state:  KS

ship-to:  *id001

specialDelivery:  |
    Follow the Yellow Brick
    Road to the Emerald City.
    Pay no attention to the
    man behind the curtain.
...
]]
         },
      },
      {
         id = "toml",
         name = "TOML",
         syntaxes = {
            null_values = nil,
            booleans = [[
true
false
]],
integers = [[
+99
42
0
-17

# Grouping:
1_000
5_349_221
53_49_221
1_2_3_4_5

# Hexadecimal:
0xDEADBEEF
0xdeadbeef
0xdead_beef

# Octal:
0o01234567
0o755

# Binary:
0b11010110
]],
floats = [[
# Fractional:
+1.0
3.1415
-0.01

# Exponent:
5e+22
1e06
-2E-2

# Both:
6.626e-34
]],
strings = [[
str1 = "I'm a string."
str2 = "You can \"quote\" me."
str3 = "Name\tJos\u00E9\nLoc\tSF."
]],
literal_strings = [[
str1 = 'C:\Users\nodejs\templates'
str2 = '\\User\admin$\system32'
str3 = 'Tom "Dubs" Preston-Werner'
str4 = '<\i\c*\s*>'
]],
multiline_strings = [[
str1 = """
Roses are red
Violets are blue"""

# Trims preceeding whitespace:

str2 = """\
  The quick brown \
  fox jumps over \
  the lazy dog.\
  """
]],
lists = [=[
list1 = [ 1, 2, 3 ]
list2 = [ "Red", "Yellow", "Green" ]
list3 = [ "Text", 42, true ]
list4 = [ [ 1, 2 ], [ 3, 4, 5 ] ]
list5 = [ [ 1, 2 ], [ "a", "b", "c" ] ]

# List of tables:

[[products]]
name = "Hammer"
sku = 738594937

[[products]]  # empty table within the array

[[products]]
name = "Nail"
sku = 284758393

color = "gray"
]=],
maps = [[
[map]
key_1 = "Text"
key_2 = 42
key_3 = true

# Nested:

[a.b.c]
key_1 = "Text"
key_2 = 42
key_3 = true
]],
comments = [[
# Comment
]],
functions = nil,
string_interpolation = nil,
attributes = nil,
complete_example = [=[
receipt = "Oz-Ware Purchase Invoice"
date = "2012-08-06"

specialDelivery = """
Follow the Yellow Brick \
Road to the Emerald City. \
Pay no attention to the \
man behind the curtain."""

[customer]
first_name = "Dorothy"
family_name = "Gale"

[[items]]
part_no = "A4786"
descrip = "Water Bucket (Filled)"
price = 1.47
quantity = 4

[[items]]
part_no = "E1628"
descrip = 'High Heeled "Ruby" Slippers'
size = 8
price = 133.7
quantity = 1

[bill_to]
street = """
123 Tornado Alley
Suite 16
"""
city = "East Centerville"
state = "KS"

[ship_to]
street = """
123 Tornado Alley
Suite 16
"""
city = "East Centerville"
state = "KS"
]=]
         },
      },
      {
         id = "json5",
         name = "JSON5",
         class = "json",
         syntaxes = {
            null_values = "null",
            booleans = [[
true
false
]],
integers = [[
+99
42
0
-17

// Hexadecimal:
0xdeadbeef
]],
floats = [[
+1.0
3.1415
-0.01

NaN
Infinity

// Leading/trailing decimal point:

.8675309
8675309.
]],
strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."
]],
literal_strings = [[
'C:\Users\nodejs\templates'
'\\User\admin$\system32'
'Tom "Dubs" Preston-Werner'
'<\i\c*\s*>'
]],
            multiline_strings = [[
"Roses are red \
Violets are blue"

"The quick brown \
fox jumps over \
the lazy dog."
]],
lists = [=[
[1, 2, 3]
["Red", "Yellow", "Green"]
["Text", 42, true]
[[1, 2], [3, 4, 5]]
[[1, 2], ["a", "b", "c"]]
]=],
maps = [[
{
   key_1: "Text",
   key_2: 42,
   key_3: true, // Trailing comma
}
]],
comments = [[
// Comment

/*
 * Block comment
 */
]],
functions = nil,
string_interpolation = nil,
attributes = nil,
complete_example = [[
{
  receipt: "Oz-Ware Purchase Invoice",
  date: "2012-08-06",
  customer: {
    first_name: "Dorothy",
    family_name: "Gale"
  },
  items: [
    {
      part_no: "A4786",
      descrip: "Water Bucket (Filled)",
      price: 1.47,
      quantity: 4
    },
    {
      part_no: "E1628",
      descrip: "High Heeled \"Ruby\" Slippers",
      size: 8,
      price: 133.7,
      quantity: 1
    }
  ],
  billTo: {
    street: "123 Tornado Alley\nSuite 16",
    city: "East Centerville",
    state: "KS"
  },
  shipTo: {
    street: "123 Tornado Alley\nSuite 16",
    city: "East Centerville",
    state: "KS"
  },
  specialDelivery: "Follow the Yellow Brick \
Road to the Emerald City. \
Pay no attention to the \
man behind the curtain."
}]]
         },
      },
      {
         id = "hocon",
         name = "HOCON",
         class = "json",
         syntaxes = {
            null_values = "null",
            booleans = [[
true
false
]],
integers = [[
99
42
0
-17
]],
floats = [[
+1.0
3.1415
-0.01
]],
strings = [[
str1: "I'm a string."
str2: "You can \"quote\" me."
str3: "Name\tJos\u00E9\nLoc\tSF."

# Unquoted:

str4: hello
]],
literal_strings = nil,
            multiline_strings = [[
"""Roses are red
Violets are blue"""

"""The quick brown
fox jumps over
the lazy dog."""
]],
lists = [=[
[1, 2, 3]
["Red", "Yellow", "Green",] // Trailing comma
["Text", 42, true]
[[1, 2], [3, 4, 5]]
[[1, 2], ["a", "b", "c"]]
]=],
            maps = [[
// JSON-compatible:

{
    "map": {
       "key_1": "Text",
       "key_2": 42,
       "key_3": true
    }
}

// Simplified notation:

map {
   key_1 = "Text"
   key_2 = 42
   key_3 = true
}

// Dotted notation:

map.key_1 = "Text"
map.key_2 = 42
map.key_3 = true
]],
            comments = [[
// Comment

# Comment
]],
            functions = nil,
            string_interpolation = [[
message : Hello, ${name}!

// Substitutions:

standard-timeout = 10ms
foo.timeout = ${standard-timeout}
bar.timeout = ${standard-timeout}
]],
            attributes = nil,
            other = [[
// Includes:

include url("http://mydomain.com/myfile.conf")
include "path/to/file.conf"
include file("path/to/file.conf")
conf = include "file.conf"
]]
         },
      },
      {
         id = "sdlang",
         name = "SDLang",
         class = "plaintext",
         syntaxes = {
            null_values = "null",
            booleans = [[
true
false
on
off
]],
            integers = [[
// 32-bit integer:
99
42
0
-17

// 64-bit integer:
10L
]],
            floats = [[
// 64-bit float (double):
1.0
3.1415
-0.01

10.5d // 64-bit float
10.5f // 32-bit float
10.123BD // 128-bit decimal
]],
strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."
]],
literal_strings = [[
`C:\Users\nodejs\templates`
`\\User\admin$\system32`
`Tom "Dubs" Preston-Werner`
`<\i\c*\s*>`
]],
            multiline_strings = nil,
            lists = [[
list1 5 6 7
list2 "Text" 42 true
]],
            maps = [[
map {
   key_1 "Text"
   key_2 42
   key_3 true
}
]],
            datetimes = [[
// Dates/times:

1985/04/12 23:20:50.520-UTC
1985/04/12 23:20:50.520
1985/04/12

// Durations:

12:14:34
12:14:34.123
2d:12:14:34
]],
            binary = [[
[sdf789GSfsb2+3324sf2]
]],
            comments = [[
// Comment

/*
 * Block comment
 */

# Comment

-- Comment
]],
            functions = nil,
            string_interpolation = nil,
            attributes = [[
author "Peter Parker" email="peter@example.org" active=true
]],
complete_example = [[
receipt "Oz-Ware Purchase Invoice"
date 2012-08-06

customer {
  first_name "Dorothy"
  family_name "Gale"
}

items {
  item {
    part_no "A4786"
    descrip "Water Bucket (Filled)"
    price 1.47
    quantity 4
  }
  item {
    part_no "E1628"
    descrip "High Heeled \"Ruby\" Slippers"
    size 8
    price 133.7
    quantity 1
  }
}

billTo {
  street "123 Tornado Alley\nSuite 16"
  city "East Centerville"
  state "KS"
}

shipTo {
  street "123 Tornado Alley\nSuite 16"
  city "East Centerville"
  state "KS"
}

specialDelivery "Follow the Yellow Brick \
Road to the Emerald City. \
Pay no attention to the \
man behind the curtain."
]]
         },
      },
      {
         id = "kdl",
         name = "KDL",
         class = "plaintext",
         link = "https://github.com/kdl-org/kdl",
         syntaxes = {
            null_values = "null",
            booleans = [[
true
false
]],
            integers = [[
99
42
0
-17

// Grouping:
1_000
5_349_221
53_49_221
1_2_3_4_5

// Hexadecimal:
0xDEADBEEF
0xdeadbeef
0xdead_beef

// Octal:
0o01234567
0o755

// Binary:
0b11010110
]],
            floats = [[
// Fractional:
1.0
3.1415
-0.01

// Exponent:
5e+22
1e06
-2E-2

// Both:
6.626e-34
]],
strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."
]],
literal_strings = [[
r"C:\Users\nodejs\templates"
r"\\User\admin$\system32"
r"Tom "Dubs" Preston-Werner"
r"<\i\c*\s*>"
]],
            multiline_strings = [[
"Roses are red
Violets are blue"

r"The quick brown
fox jumps over
the lazy dog."
]],
            lists = [[
list1 5 6 7
list2 "Text" 42 true
]],
            maps = [[
map {
   key_1 "Text"
   key_2 42
   key_3 true
}
]],
            datetimes = nil,
            binary = nil,
            comments = [[
// Comment

/*
 * Block comment
 */

/*/*
hello
*/*/

// Structural comments ("slashdash"):
/-mynode "foo" key=1 {
  a
  b
  c
}

mynode /-"commented" "not commented" /-key="value" /-{
  a
  b
}
]],
            functions = nil,
            string_interpolation = nil,
            typed_tags = [[
(i32)12
(celsius)100

numbers (u8)10 (i32)20 myfloat=(f32)1.5 {
  strings (uuid)"123e4567-e89b-12d3-a456-426614174000" (date)"2021-02-03" filter=(regex)r"$\d+"
  (author)person name="Alex"
}
]],
            attributes = [[
author "Peter Parker" email="peter@example.org" active=true
]],
complete_example = [[
receipt "Oz-Ware Purchase Invoice"
date "2012-08-06"

customer {
  first_name "Dorothy"
  family_name "Gale"
}

items {
  item {
    part_no "A4786"
    descrip "Water Bucket (Filled)"
    price 1.47
    quantity 4
  }
  item {
    part_no "E1628"
    descrip "High Heeled \"Ruby\" Slippers"
    size 8
    price 133.7
    quantity 1
  }
}

billTo {
  street "123 Tornado Alley\nSuite 16"
  city "East Centerville"
  state "KS"
}

shipTo {
  street "123 Tornado Alley\nSuite 16"
  city "East Centerville"
  state "KS"
}

specialDelivery "Follow the Yellow Brick \
Road to the Emerald City. \
Pay no attention to the \
man behind the curtain."
]]
         },
      },
      {
         id = "hcl",
         name = "HCL",
         class = "plaintext",
         syntaxes = {
            null_values = "null",
            booleans = [[
true
false
]],
integers = [[
99
42
0
-17
]],
            floats = [[
# Fractional:
1.0
3.1415
-0.01

# Exponent:
5e+22
1e06
-2E-2

# Both:
6.626e-34
]],
            strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."
]],
            literal_strings = nil,
            multiline_strings = [[
<<END
Roses are red \
Violets are blue"
END

# Trims preceding whitespace:

<<-FOO
   The quick brown
   fox jumps over
   the lazy dog.
FOO
]],
            lists = [=[
[1, 2, 3]
["Text", 42, true]
[[1, 2], [3, 4, 5]]
[(1, 2), ["a", "b", "c"]]
]=],
            maps = [[
map {
   key_1 = "Text"
   key_2 = 42
   key_3 = true
}

# Nested:

a "b" "c" {
   key_1 = "Text"
   key_2 = 42
   key_3 = true
}
]],
            comments = [[
# Comment

// Comment

/*
 * Block comment
 */
]],
            expressions = [[
# Arithmetic with literals and application-provided variables
sum = 1 + addend

# Application-provided functions
shouty_message = upper(message)

# For loops

[for v in ["a", "b"]: v]                 # ["a", "b"]
[for i, v in ["a", "b"]: i]              # [0, 1]
{for i, v in ["a", "b"]: v => i}         # {a = 0, b = 1}.
{for i, v in ["a", "a", "b"]: v => i...} # {a = [0, 1], b = [2]}.
]],
            string_interpolation = [[
message = "Hello, ${name}!"
]],
            attributes = nil,
            complete_example = [[
receipt = "Oz-Ware Purchase Invoice"
date = "2012-08-06"

customer {
  first_name = "Dorothy"
  family_name = "Gale"
}

items [
  {
    part_no = "A4786"
    descrip = "Water Bucket (Filled)"
    price = 1.47
    quantity = 4
  },
  {
    part_no = "E1628"
    descrip = "High Heeled \"Ruby\" Slippers"
    size = 8
    price = 133.7
    quantity = 1
  }
]

billTo {
  street = "123 Tornado Alley\nSuite 16"
  city = "East Centerville"
  state = "KS"
}

shipTo {
  street = "123 Tornado Alley\nSuite 16"
  city = "East Centerville"
  state = "KS"
}

specialDelivery = <<END
Follow the Yellow Brick
Road to the Emerald City.
Pay no attention to the
man behind the curtain.
END
]]
         },
      },
      {
         id = "dhall",
         name = "Dhall",
         class = "plaintext",
         syntaxes = {
            null_values = [[
# (Optional T) only
None
]],
            booleans = [[
True
False
]],
            integers = [[
+99
42
0
-17

# Hexadecimal:
0xDEADBEEF
0xdeadbeef
]],
            floats = [[
// Fractional:
1.0
3.1415
-0.01

NaN
Infinity
-Infinity

// Exponent:
5e+22
1e06
-2E-2

// Both:
6.626e-34
]],
strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."
]],
literal_strings = nil,
            multiline_strings = [[
''
Roses are red
Violets are blue
''

# Trims preceding whitespace:

   ''
   The quick brown
   fox jumps over
   the lazy dog.
   ''
]],
            lists = [=[
[1, 2, 3] : List Natural
["Red", "Yellow", "Green"] : List Text
[[1, 2], [3, 4, 5]] : List (List Natural)
]=],
            maps = [[
let Map : Type =
      { key_1 : Text
      , key_2 : Natural
      , key_3 : Bool
      }

in { key_1 = "Text"
   , key_2 = 42
   , key_3 = True } : Map
]],
            comments = [[
-- Comment

{-
   Block comment
-}
]],
            functions = [[
let add = \(a : Natural) -> \(b : Natural) -> a + b
]],
            expressions = nil,
            string_interpolation = [[
"Hello, ${name}!"
]],
            attributes = nil,
         },
      },
      {
         id = "ion",
         name = "Ion",
         class = "plaintext",
         syntaxes = {
            null_values = [[
null
null.null
null.bool
null.int
null.float
null.decimal
null.timestamp
null.string
null.symbol
null.blob
null.clob
null.struct
null.list
null.sexp
]],
            booleans = [[
true
false
]],
            integers = [[
99
42
0
-17

# Grouping:
1_000
5_349_221
53_49_221
1_2_3_4_5

# Hexadecimal:
0xDEADBEEF
0xdeadbeef
0xdead_beef

# Binary:
0b11010110
]],
            floats = [[
// Fractional:
1.0
3.1415
-0.01

nan
+inf
-inf

// Exponent:
5e+22
1e06
-2E-2

// Both:
6.626e-34
]],
strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."

// Symbols:

'myVar2'
myVar2
myvar2
'hi ho'
'\'ahoy\''
]],
literal_strings = [[
'''C:\Users\nodejs\templates'''
'''\\User\admin$\system32'''
'''Tom "Dubs" Preston-Werner'''
'''<\i\c*\s*>'''
]],
            multiline_strings = [[
'''\
Roses are red
Violets are blue
'''

( '''The quick brown'''
  '''fox jumps over'''
  '''the lazy dog.''' )
]],
            lists = [=[
[1, 2, 3]
["Text", 42, true]
[[1, 2], [3, 4, 5]]

# S-expressions:

()
(cons 1 2)
([hello][there])

(a+-b)  ( 'a' '+-' 'b' )    // Equivalent; three symbols
(a.b;)  ( 'a' '.' 'b' ';')  // Equivalent; four symbols
]=],
            maps = [[
{
   key_1: "Text",
   key_2: 42,
   key_3: true
}
]],
            datetimes = [[
1985-04-12T23:20Z
1985-04-12T23:20:50.520-08:00
1985-04-12T23:20:50.520Z
1985-04-13T07:20:50.520+00:00
1985-04-13T07:20:50.520-00:00

1985-04-12
1985-04-12T
1985-04T
1985T
]],
            binary = [[
// Blobs:

{{ sdf789GSfsb2+3324sf2 }}

// Clobs:

{{ "Hello World" }}

shift_jis ::
{{
   '''吾輩は猫である。'''
   '''名前はまだ無い。''''
}}
]],
            comments = [[
// Comment

/*
 * Block comment
 */
]],
            functions = nil,
            string_interpolation = nil,
            typed_tags = [[
int32::12
degrees::'celsius'::100
'my.custom.type' :: { x : 12 , y : -1 }

{ field: some_annotation::value }
]],
            complete_example = [[
{
  receipt: "Oz-Ware Purchase Invoice",
  date: 2012-08-06T,

  customer: {
    first_name: "Dorothy",
    family_name: "Gale"
  },

  items: [
    {
      part_no: "A4786",
      descrip: "Water Bucket (Filled)",
      price: 1.47,
      quantity: 4
    },
    {
      part_no: "E1628",
      descrip: "High Heeled \"Ruby\" Slippers",
      size: 8,
      price: 133.7,
      quantity: 1
    }
  ],

  billTo: {
    street: "123 Tornado Alley\nSuite 16",
    city: "East Centerville",
    state: "KS"
  },

  shipTo: {
    street: "123 Tornado Alley\nSuite 16",
    city: "East Centerville",
    state: "KS"
  },

  specialDelivery: '''\
Follow the Yellow Brick
Road to the Emerald City.
Pay no attention to the
man behind the curtain.
'''
}
]]
         },
      },
      {
         id = "edn",
         name = "EDN",
         class = "lisp",
         link = "https://github.com/edn-format/edn",
         syntaxes = {
            null_values = "nil",
            booleans = [[
true
false
]],
integers = [[
+99
42
0
-17
]],
            floats = [[
;; Fractional:
1.0
3.1415
-0.01

;; Exponent:
5e+22
1e06
-2E-2

;; Both:
6.626e-34
]],
            strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."
]],
            literal_strings = nil,
            multiline_strings = [[
"Roses are red \
Violets are blue"

"The quick brown \
fox jumps over \
the lazy dog."
]],
            lists = [=[
;; Lists:
(1 2 3)
("Text" 42 true)
((1 2) (3 4 5))
((1 2) ("a" "b" "c"))

;; Vectors:
[a b 42]
]=],
            maps = [[
{:key-1 "Text", :key-2 42, :key-3 true}
{:a 1, "foo" :bar, [1 2 3] four}
]],
datetimes = [[
#inst "1985-04-12T23:20:50.52Z"
]],
            comments = [[
; Comment
]],
            functions = nil,
            string_interpolation = nil,
            attributes = nil,
            typed_tags = [[
#myapp/Person {:first "Fred" :last "Mertz"}
]],
            other = [[
;; Sets:
#{a b [1 2 3]}

;; UUIDs:
#uuid "f81d4fae-7dec-11d0-a765-00a0c91e6bf6"

; Discard sequences:
[a b #_foo 42] ;; => [a b 42]
]]
         },
      },
      {
         id = "nestedtext",
         name = "NestedText",
         class = "plaintext",
         syntaxes = {
            null_values = [[
null
undefined
]],
            booleans = [[
true
false
]],
            integers = nil,
            floats = nil,
strings = [[
I'm a string.
You can "quote" me.
]],
literal_strings = [[
C:\Users\nodejs\templates
\\User\admin$\system32
Tom "Dubs" Preston-Werner
<\i\c*\s*>
]],
            multiline_strings = [[
> Roses are red
> Violets are blue

> The quick brown
> fox jumps over
> the lazy dog.
]],
            lists = [=[
- 1
- 2
- 3

- Red
- Yellow
- Green

# Inline syntax:

[Text, 42, true]
[[1, 2], [3, 4, 5]]
[[1, 2], [a, b, c]]
]=],
            maps = [[
key 1: Text
key 2: 42
key 3: true

# Multiline keys:

: key 1
:     the first key
    > value 1
: key 2: the second key
    - value 2a
    - value 2b

# Inline syntax:

{key 1: Text, key 2: 42, key 3: true}
]],
            comments = [[
# Comment
]],
            functions = nil,
            string_interpolation = nil,
            attributes = nil,
         }
      },
      {
         id = "ogdl",
         name = "OGDL",
         class = "plaintext",
         link = "https://github.com/nin-jin/tree.d",
         syntaxes = {
            null_values = nil,
            booleans = nil,
            integers = nil,
            floats = nil,
strings = [[
"I'm a string."
"You can \"quote\" me."

# Unquoted:

hello
]],
literal_strings = [[
'C:\Users\nodejs\templates'
'\\User\admin$\system32'
'Tom "Dubs" Preston-Werner'
'<\i\c*\s*>'
]],
            multiline_strings = [[
str1 \
   Roses are red
   Violets are blue

# Evens out preceding whitespace:

str2 \
     The quick brown
    fox jumps over
   the lazy dog.
]],
            lists = [[
list1
   1
   2
   3

list2
   Red, Yellow, Green

list3 { Text, 42, true }

list4 { list5 { 1, 2 }, list6 { a, b, c } }
]],
            maps = [[
map
   key_1 Text
   key_2 42
   key_3 true
]],
            comments = [[
# Comment
]],
            meta_information = [[
#? ( ogdl 1.0, encoding iso-8859-1 )
]],
            path_expressions = [[
config.network.ip
text.paragraph{2}
limits.range[1]
]],
            functions = nil,
            string_interpolation = nil,
            attributes = nil,
         },
      },
      {
         id = "tree",
         name = "Tree",
         class = "plaintext",
         link = "https://github.com/nin-jin/tree.d",
         syntaxes = {
            null_values = nil,
            booleans = nil,
integers = [[
99
42
0
-17
]],
            floats = [[
1.0
3.1415
-0.01

Nan
Infinity
]],
strings = [[
\I'm a string.
\You can "quote" me.
]],
literal_strings = [[
\C:\Users\nodejs\templates
\\\User\admin$\system32
\Tom "Dubs" Preston-Werner
\<\i\c*\s*>
]],
            multiline_strings = [[
\Roses are red
\Violets are blue

\The quick brown
\fox jumps over
\the lazy dog.
]],
            lists = [=[
\
	1
	2
	3

\
	Red
	Yellow
	Green

\
	Text
	42
	true

\
	\
		1
		2
	\
		a
		b
		c
]=],
            maps = [[
key_1
	\Text
key_2
	42
key_3
	true

# Multiline keys:
\key 4
	/
		\Text
		42
		true
]],
            comments = [[
# Comment
]],
            functions = nil,
            string_interpolation = nil,
            attributes = nil,
         },
      },
      {
         id = "ron",
         name = "RON",
         class = "plaintext",
         link = "https://github.com/ron-rs/ron",
         syntaxes = {
            null_values = [[
// Option<T> only
None
]],
            booleans = [[
true
false
]],
            integers = [[
+99
42
0
-17

// Grouping:
1_000
5_349_221
53_49_221
1_2_3_4_5

// Hexadecimal:
0xDEADBEEF
0xdeadbeef
0xdead_beef

// Octal:
0o01234567
0o755

// Binary:
0b11010110
]],
            floats = [[
// Fractional:
1.0
3.1415
-0.01

// Exponent:
5e+22
1e06
-2E-2

// Both:
6.626e-34
]],
strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."
]],
literal_strings = [[
r#"C:\Users\nodejs\templates"#
r#"\\User\admin$\system32"#
r#"Tom "Dubs" Preston-Werner"#
r#"<\i\c*\s*>"#
]],
            multiline_strings = [[
r#"
Roses are red
Violets are blue
"#

r##"
The quick brown
fox jumps over
the lazy dog.
"##
]],
            lists = [=[
[1, 2, 3]
["Red", "Yellow", "Green"]
["Text", 42, true]
[[1, 2], [3, 4, 5]]
[[1, 2], ["a", "b", "c"]]

# Tuple syntax:
(1, 2, 3)
TupleStruct(true,)
]=],
            maps = [[
# Map syntax:

map: {
   key_1: "Text",
   key_2: 42,
   key_3: true
}

# Struct syntax:

struct: (
   key_1: "Text",
   key_2: 42,
   key_3: true
)

struct2: Struct(
   key_1: "Text",
   key_2: 42,
   key_3: true
)
]],
            comments = [[
// Comment

/*
 * Block comment
 */
]],
            functions = nil,
            string_interpolation = nil,
            attributes = nil,
            other = [[
// Chars:

'a'
'\n'

// Unit structs:

Unit
()

// Optionals/Enum variants:

Some(42)
None
PageLoad
KeyPress('c')
]],
            complete_example = [[
Invoice(
  receipt: "Oz-Ware Purchase Invoice",
  date: "2012-08-06",

  customer: Person(
    first_name = "Dorothy"
    family_name = "Gale"
  ),

  items: [
    Item(
      part_no = "A4786"
      descrip = "Water Bucket (Filled)"
      size = None,
      price = 1.47
      quantity = 4
    ),
    Item(
      part_no = "E1628"
      descrip = "High Heeled \"Ruby\" Slippers"
      size = Some(8)
      price = 133.7
      quantity = 1
    )
  },

  billTo: Address(
    street = "123 Tornado Alley\nSuite 16"
    city = "East Centerville"
    state = "KS"
  ),

  shipTo: Address(
    street = "123 Tornado Alley\nSuite 16"
    city = "East Centerville"
    state = "KS"
  ),

  specialDelivery: r#"
Follow the Yellow Brick
Road to the Emerald City.
Pay no attention to the
man behind the curtain.
"#
)
]]
         },
      },
      {
         id = "starlark",
         name = "Starlark",
         class = "python",
         syntaxes = {
            null_values = "None",
            booleans = [[
True
False
]],
            integers = [[
99
42
0
-17

int("0xdeadbeef", 16)
]],
            floats = [[
# Fractional:
1.0
3.1415
-0.01

# Exponent:
5e+22
1e06
-2E-2

# Both:
6.626e-34
]],
strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."
]],
literal_strings = [[
'C:\Users\nodejs\templates'
'\\User\admin$\system32'
'Tom "Dubs" Preston-Werner'
'<\i\c*\s*>'
]],
            multiline_strings = [[
'''
Roses are red
Violets are blue
'''

'''
The quick brown
fox jumps over
the lazy dog.
'''
]],
            lists = [=[
[1, 2, 3]
["Red", "Yellow", "Green"]
["Text", 42, true]
[[1, 2], [3, 4, 5]]
[[1, 2], ["a", "b", "c"]]

# Tuple syntax:
(1, 2, 3)
(true,)
]=],
            maps = [[
map = {
   key_1: "Text",
   key_2: 42,
   key_3: True
}
]],
            comments = [[
# Comment
]],
            functions = [[
def add(a, b):
   return a + b
]],
            string_interpolation = [[
"Hello, %s!" % name
"Hello %s, your score is %d" % (name, 75)
]],
            attributes = nil,
         },
      },
      {
         id = "fluent",
         name = "Fluent",
         class = "plaintext",
         syntaxes = {
            null_values = nil,
            booleans = nil,
            integers = [[
{99}
{42}
{0}
{-17}
]],
            floats = [[
{1.0}
{3.1415}
{-0.01}
]],
            strings = [[
str1 = I'm a string.
str2 = You can "quote" me.
str3 = Name\tJos\u00E9\nLoc\tSF.

# Terms:

-brand-name = Firefox
]],
            literal_strings = [[
string-expression = {"abc"}
number-expression = {123}
number-expression = {-3.14}
]],
            multiline_strings = [[
key1 = Roses are red
   Violets are blue

key2
    .attr = The quick brown
        fox jumps over
        the lazy dog.
]],
            lists = nil,
            maps = nil,
            comments = "# Comment",
            functions = [[
pref-page =
    .title = { PLATFORM() ->
        [windows] Options
       *[other] Preferences
    }

# Term parameters:

-term = { $arg ->
   *[key] Value
}
key01 = { -term }
key02 = { -term () }
key03 = { -term(arg: 1) }
key04 = { -term("positional", narg1: 1, narg2: 2) }
]],
            expressions = [[
emails = { $unreadEmails ->
        [one] You have one unread email.
        [42] You have { $unreadEmails } unread emails. So Long, and Thanks for All the Fish.
       *[other] You have { $unreadEmails } unread emails.
    }
]],
            string_interpolation = [[
message = Hello, { $user }!

# References:

menu-settings = Settings
help-menu-settings = Click { menu-settings } to save the file.

# Term references:

-brand-short-name = Firefox
close-msg = Close { -brand-short-name }
]],
            attributes = [[
login-button =
    .label = Login
    .accesskey = L

instructions-link = Log out
    .tooltip = Disconnect from this account
]],
         },
      },
      {
         id = "dadl",
         name = "Dadl",
         class = "plaintext",
         link = "https://github.com/dadlang/dadl",
         syntaxes = {
            null_values = nil,
            booleans = [[
true
false
]],
integers = [[
99
42
0
-17
]],
floats = [[
1.0
3.1415
-0.01
]],
strings = [[
# strings.dads
@schema dadl 0.1

[structure]
str1 string
str2 string
str3 string

ident1 identifier
formula1 formula <host hostname> [':' <port networkPort>]
sequence1 sequence[identifier]


# strings.dad
@schema strings.dads

str1 "I'm a string."
str2 "You can \"quote\" me."
str3 "Name\tJos\u00E9\nLoc\tSF."

ident1 hello
formula1 localhost:8080
sequence1 VAL1 VAL2 VAL3
]],
literal_strings = [[
# literal_strings.dads
@schema dadl 0.1

[structure]
str1 string
str2 string
str3 string
str4 string


# literal_strings.dad
@schema literal_strings.dads

str1 C:\Users\nodejs\templates
str2 \\User\admin$\system32
str3 Tom "Dubs" Preston-Werner
str4 <\i\c*\s*>
]],
multiline_strings = [[
# multiline_strings.dads
@schema dadl 0.1

[structure]
str1 string
str2 string


# multiline_strings.dad
@schema multiline_strings.dads
str1
    Roses are red
    Violets are blue

str2
    The quick brown
    fox jumps over
    the lazy dog.
]],
lists = [[
# lists.dads
@schema dadl 0.1

[structure]
list1 list[int]
list2 list[identifier]


# lists.dad
@schema lists.dads

list1
    1
    2
    3

list2
    Red
    Green
    Blue
]],
maps = [[
# maps.dads
@schema dadl 0.1

map1 map[int]string

map2 map[identifier]
    childValue int


# maps.dad
@schema maps.dads

map1
    1 Some value for key 1
    2 Some value for key 2
    3 Some value for key 3

map2
    key1
        childValue 1
    key2
        childValue 2
]],
comments = [[
# Comment
]],
functions = nil,
string_interpolation = nil,
attributes = nil,
other = [[
# other.dads
@schema dadl 0.1

# Enums

enum1 enum OPTION1 OPTION2 OPTION3
enum2 enum[bool] YES[true] NO[false]
enum3 enum[int] CAR[1] TRUCK[2] MOTO[3]


# other.dad
@schema other.dads

enum1 OPTION1
enum2 YES
enum3 MOTO
]],
complete_example = nil
         },
      },
      {
         id = "nix",
         name = "Nix",
         syntaxes = {
            null_values = "null",
            booleans = [[
true
false
]],
integers = [[
99
42
0
-17
]],
floats = [[
1.0
3.1415
-0.01
]],
strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."

# Paths:

./hello/world
<nixpkgs/lib>

# URIs:

http://example.org/foo.tar.bz2
]],
literal_strings = [[
''C:\Users\nodejs\templates''
''\\User\admin$\system32''
''Tom "Dubs" Preston-Werner''
''<\i\c*\s*>''
]],
multiline_strings = [[
''
Roses are red
Violets are blue
''

''The quick brown
  fox jumps over
  the lazy dog.
''
]],
            lists = [=[
[1 2 3]
["Red" "Yellow" "Green"]
["Text" 42 true]
[[1 2] [3 4 5]]
[[1 2] ["a" "b" "c"]]
]=],
            maps = [[
{
   key_1 = "Text";
   key_2 = 42;
   key_3 = True;
}
]],
            comments = [[
# Comment
]],
            functions = [[
add = a: b: a + b
]],
            string_interpolation = [[
"Hello, ${name}!"
]],
            attributes = nil,
         },
      },
      {
         id = "lua",
         name = "Lua",
         syntaxes = {
            null_values = "nil",
            booleans = [[
true
false
]],
integers = [[
99
42
0
-17
]],
floats = [[
1.0
3.1415
-0.01
]],
strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."
]],
literal_strings = [[
'C:\Users\nodejs\templates'
'\\User\admin$\system32'
'Tom "Dubs" Preston-Werner'
'<\i\c*\s*>'
]],
multiline_strings = [==[
[[
Roses are red
Violets are blue
]]

[=[
The quick brown
fox jumps over
the lazy dog.
]=]
]==],
            lists = [[
{ 1, 2, 3 }
{ "Text", 42, true }
]],
            maps = [[
{
   key_1 = "Text",
   key_2 = 42,
   key_3 = true
}

{
   ["Text"] = "value_1",
   [42] = "value_2",
   [true] = "value_3"
}
]],
            comments = [==[
-- Comment

--[[
   Block comment
--]]

--[=[
   Block comment
--]=]

]==],
            functions = [[
function(a, b) return a + b end
]],
            string_interpolation = [[
("Hello, %s!"):format(name)
]],
            attributes = nil,
            complete_example = [=[
return {
  receipt = "Oz-Ware Purchase Invoice",
  date = "2012-08-06",

  customer = {
    first_name = "Dorothy",
    family_name = "Gale"
  },

  items = {
    {
      part_no = "A4786",
      descrip = "Water Bucket (Filled)",
      price = 1.47,
      quantity = 4
    },
    {
      part_no = "E1628",
      descrip = "High Heeled \"Ruby\" Slippers",
      size = 8,
      price = 133.7,
      quantity = 1
    }
  },

  bill_to = {
    street = "123 Tornado Alley\nSuite 16",
    city = "East Centerville",
    state = "KS"
  },

  ship_to = {
    street = "123 Tornado Alley\nSuite 16",
    city = "East Centerville",
    state = "KS"
  },

  special_delivery = [[
Follow the Yellow Brick
Road to the Emerald City.
Pay no attention to the
man behind the curtain.
]]
}
]=]
         },
      },
      {
         id = "emacs_lisp",
         name = "Emacs Lisp",
         class = "lisp",
         syntaxes = {
            null_values = "nil",
            booleans = [[
t
nil
]],
integers = [[
+99
42
0
-17
]],
            floats = [[
;; Fractional:
1.0
3.1415
-0.01

;; Exponent:
5e+22
1e06
-2E-2

;; Both:
6.626e-34
]],
            strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."
]],
            literal_strings = [[
'C:\Users\nodejs\templates'
'\\User\admin$\system32'
'Tom "Dubs" Preston-Werner'
'<\i\c*\s*>'
]],
            multiline_strings = [[
"Roses are red \
Violets are blue"

(concat "The quick brown "
  "fox jumps over "
  "the lazy dog.")
]],
            lists = [[
'(1 2 3)
'("Text" 42 t)
'((1 2) (3 4 5))
'((1 2) ("a" "b" "c"))
]],
            maps = [[
# Association lists:

'((key-1 . "Text") (key-2 . 42) (key-3 . t))

# Property lists:

'(:key-1 "Text" :key-2 42 :key-3 t)
]],
            comments = [[
; Comment
]],
            functions = [[
(lambda (a b) (+ a b))
]],
            string_interpolation = [[
(format "Hello, %s!" name)
]],
            attributes = nil,
         },
      }
   }
}
