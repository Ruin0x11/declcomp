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
         id = "expressions",
         name = "Expressions"
      },
      {
         id = "function_definitions",
         name = "Function Definitions"
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
         id = "metadata",
         name = "Metadata"
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
function_definitions = nil,
string_interpolation = nil,
attributes = "<author email=\"peter@example.org\" active=\"true\">Peter Parker</author>",
metadata = [[
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
    <li>
      <part_no>A4786</part_no>
      <descrip>Water Bucket (Filled)</descrip>
      <price>1.47</price>
      <quantity>4</quantity>
    </li>
    <li>
      <part_no>E1628</part_no>
      <descrip>High Heeled &quot;Ruby&quot; Slippers</descrip>
      <size>8</size>
      <price>133.7</price>
      <quantity>1</quantity>
    </li>
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
function_definitions = nil,
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
function_definitions = nil,
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
function_definitions = nil,
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
function_definitions = nil,
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
str5: abc_123
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
            function_definitions = nil,
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
         id = "cson",
         name = "CSON",
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
multiline_strings = [[
'''
Roses are red
Violets are blue
''''

'''
The quick brown
fox jumps over
the lazy dog.
'''
]],
lists = [=[
[1, 2, 3]
["Red", "Yellow", "Green"]
[
    "Text"
    42
    true
]

[[1, 2], [3, 4, 5]]
[[1, 2], ["a", "b", "c"]]
]=],
maps = [[
map:
   key_1: "Text"
   key_2: 42
   key_3: true
]],
comments = "# Comment",
function_definitions = nil,
string_interpolation = nil,
attributes = nil,
complete_example = [[
receipt: 'Oz-Ware Purchase Invoice'
date: '2012-08-06'

customer:
  first_name: 'Dorothy'
  family_name: 'Gale'

items: [
  {
    part_no: 'A4786'
    descrip: 'Water Bucket (Filled)'
    price: 1.47
    quantity: 4
  }
  {
    part_no: 'E1628'
    descrip: 'High Heeled "Ruby" Slippers'
    size: 8
    price: 133.7
    quantity: 1
  }
]

billTo:
  street: '''
    123 Tornado Alley
    Suite 16
  '''
  city: 'East Centerville'
  state: 'KS'

shipTo:
  street: '''
    123 Tornado Alley
    Suite 16
  '''
  city: 'East Centerville'
  state: 'KS'

specialDelivery: 'Follow the Yellow Brick Road to the Emerald City. Pay no attention to the man behind the curtain.'
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
            function_definitions = nil,
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
            function_definitions = nil,
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
            literal_strings = [[
'C:\Users\nodejs\templates'
'\\User\admin$\system32'
'Tom "Dubs" Preston-Werner'
'<\i\c*\s*>'
]],
            multiline_strings = [[
<<END
Roses are red
Violets are blue
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
["Red", "Yellow", "Green"]
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
            expressions = [[
# Arithmetic with literals and application-provided variables
sum = 1 + addend

# Application-provided function_definitions
shouty_message = upper(message)

# For loops

[for v in ["a", "b"]: v]                 # ["a", "b"]
[for i, v in ["a", "b"]: i]              # [0, 1]
{for i, v in ["a", "b"]: v => i}         # {a = 0, b = 1}.
{for i, v in ["a", "a", "b"]: v => i...} # {a = [0, 1], b = [2]}.
]],
            comments = [[
# Comment

// Comment

/*
 * Block comment
 */
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
         id = "ucl",
         name = "UCL",
         class = "plaintext",
         link = "https://github.com/vstakhov/libucl",
         syntaxes = {
            null_values = "null",
            booleans = [[
true
false
yes
no
on
off
]],
integers = [[
99
42
0
-17

# Quantities:
1k  # => 1000
1kb # => 1024
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

# Time:
10min # => 600.0
10ms  # => 0.01
]],
            strings = [[
"I'm a string."
"You can \"quote\" me."
"Name\tJos\u00E9\nLoc\tSF."

# Unquoted:

hello
abc_123
]],
            literal_strings = [[
'C:\Users\nodejs\templates'
'\\User\admin$\system32'
'Tom "Dubs" Preston-Werner'
'<\i\c*\s*>'
]],
            multiline_strings = [[
str1 = <<END
Roses are red
Violets are blue
END

str2 <<FOO
The quick brown
fox jumps over
the lazy dog.
FOO
]],
            lists = [=[
[1, 2, 3]
["Red", "Yellow", "Green"]
["Text", 42, true]
[[1, 2], [3, 4, 5]]
[[1, 2], ["a", "b", "c"]]
]=],
            maps = [[
map {
   key_1 = "Text";
   key_2 = 42;
   key_3 true;
}

# Nested:

a b c {
   key_1 = "Text";
   key_2 = 42;
   key_3 true;
}
]],
            comments = [[
# Comment

/*
 * Block comment
 */
]],
expressions = nil,
            string_interpolation = [[
message = "Hello, ${name}!"
]],
            attributes = nil,
            complete_example = [[
receipt = "Oz-Ware Purchase Invoice";
date = "2012-08-06";

customer {
  first_name = "Dorothy";
  family_name = "Gale";
}

items [
  {
    part_no = A4786;
    descrip = "Water Bucket (Filled)";
    price = 1.47;
    quantity = 4;
  },
  {
    part_no = E1628;
    descrip = "High Heeled \"Ruby\" Slippers";
    size = 8;
    price = 133.7;
    quantity = 1;
  }
]

billTo {
  street = "123 Tornado Alley\nSuite 16";
  city = "East Centerville";
  state = KS;
}

shipTo {
  street = "123 Tornado Alley\nSuite 16";
  city = "East Centerville";
  state = KS;
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
            function_definitions = [[
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
["Red", "Yellow", "Green"]
["Text", 42, true]
[[1, 2], [3, 4, 5]]
[[1, 2], ["a", "b", "c"]]

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
            function_definitions = nil,
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

struct1: (
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
            function_definitions = nil,
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
            function_definitions = nil,
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
map
    key 1: Text
    key 2: 42
    key 3: true

# Multiline keys:

map
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
            function_definitions = nil,
            string_interpolation = nil,
            attributes = nil,
         }
      },
      {
         id = "openddl",
         name = "OpenDDL",
         class = "plaintext",
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

# Identifiers:

hello
abc_123
]],
literal_strings = nil,
            multiline_strings = nil,
lists = [[
int[3]
{
    {1, 2, 3}
}

string[3]
{
    {"Red", "Yellow", "Green"}
}
]],
maps = [[
Map
{
   Key1 {string {"Text"}}
   Key2 {int {42}}
   Key3 {bool {true}}
}
]],
comments = [[
// Comment

/*
 * Block comment
 */
]],
function_definitions = nil,
string_interpolation = nil,
attributes = [[
Author (email = "peter@example.org", active = true)
{
    Name {string {"Peter Parker"}}
}
]],
other = [[
// Chars

'a'
'\n'

// Data states

float[2]*
{
    M{1.0, 1.0}, L{2.0, 1.0}, C{3.0, 1.0}, {3.0, 2.0}, {2.0, 3.0}
}

// References

GeometryObject $geometry1
{
    // ...
}

GeometryNode $node1
{
    Name {string {"Box001"}}
    ObjectRef {ref {$geometry1}}
}
]],
complete_example = [[
Address $address
{
    street {string {"123 Tornado Alley\nSuite 16"}}
    city {string {"East Centerville"}}
    state {string {"KS"}}
}

Invoice {
  receipt {string {"Oz-Ware Purchase Invoice"}}
  date {string {"2012-08-06"}}

  Customer
  {
      first_name {string {"Dorothy"}}
      family_name {string {"Gale"}}
  }

  Item
  {
      part_no {string {"A4786"}}
      descrip {string {"Water Bucket (Filled)"}}
      price {float {1.47}}
      quantity {int {4}}
  }
  Item
  {
      part_no {string {"E1628"}}
      descrip {string {"High Heeled \"Ruby\" Slippers"}}
      size {int {8}}
      price {float {133.7}}
      quantity {int {1}}
  }

  billTo {ref {$address}}
  shipTo {ref {$address}}

  specialDelivery {string {"Follow the Yellow Brick Road to the Emerald City. Pay no attention to the man behind the curtain."}}
}]]
         },
      },
      {
         id = "mark",
         name = "Mark",
         class = "plaintext",
         link = "https://mark.js.org",
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
-NaN
Infinity
-Infinity

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
"Roses are red
Violets are blue"

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
]=],
maps = [[
{map
   {key_1 "Text"}
   {key_2 42}
   {key_3 true}
}
]],
comments = [[
// Comment

/*
 * Block comment
 */
]],

binary = [[
// Base64:
[#sdf789GSfsb2+3324sf2]

// Ascii85:
[#~d?8s,~]
]],
function_definitions = nil,
string_interpolation = nil,
attributes = nil,
complete_example = [[
{invoice
  {receipt "Oz-Ware Purchase Invoice"}
  {date "2012-08-06"}
  {customer
    {first_name "Dorothy"}
    {family_name "Gale"}
  }
  {items
    [
      {item
        {part_no "A4786"}
        {descrip "Water Bucket (Filled)"}
        {price 1.47}
        {quantity 4}
      },
      {item
        {part_no "E1628"}
        {descrip "High Heeled \"Ruby\" Slippers"}
        {size 8}
        {price 133.7}
        {quantity 1}
      }
    ]
  }
  {billTo
    {street "123 Tornado Alley\nSuite 16"}
    {city "East Centerville"}
    {state "KS"}
  }
  {shipTo
    {street "123 Tornado Alley\nSuite 16"}
    {city "East Centerville"}
    {state "KS"}
  }
  {specialDelivery
"Follow the Yellow Brick
Road to the Emerald City.
Pay no attention to the
man behind the curtain."
  }
}
]]
         },
      },
      {
         id = "ogdl",
         name = "OGDL",
         class = "plaintext",
         link = "http://ogdl.org",
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
abc_123
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
            metadata = [[
#? ( ogdl 1.0, encoding iso-8859-1 )
]],
            path_expressions = [[
config.network.ip
text.paragraph{2}
limits.range[1]
]],
            function_definitions = nil,
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
map1
	key_1
		\Text
	key_2
		42
	key_3
		true

# Multiline keys:
map2
	\key 4
		/
			\Text
			42
			true
]],
            comments = [[
# Comment
]],
            function_definitions = nil,
            string_interpolation = nil,
            attributes = nil,
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
            function_definitions = [[
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
         id = "haml",
         name = "HAML",
         syntaxes = {
            null_values = nil,
            booleans = nil,
            integers = nil,
            floats = nil,
            strings = [[
%span I'm a string.
%span You can "quote" me.
%span
  Name	José
  Loc	SF.
]],
            literal_strings = nil,
            multiline_strings = [[
%p
  Roses are red
  Violets are blue

%p
  The quick brown
  fox jumps over
  the lazy dog.
]],
lists = [[
%ul
  %li 1
  %li 2
  %li 3

%ul
  %li Red
  %li Yellow
  %li Green
]],
maps = [[
%map
  %entry{:key => "key_1"} Text
  %entry{:key => "key_2"} 42
  %entry{:key => "key_3"} true
]],
comments = [[
/ Comment

/
   Block Comment
   Line 2

-# Silent Comment (removed from HTML)
]],
expressions = [[
#content
  == yield

  - unless items.empty?
    table
      - items.each do |item|
        tr
          td.name = item.name
          td.price = item.price
  - else
    p
     | No items found.  Please add some inventory.
       Thank you!
]],
string_interpolation = "%span Hello, #{name}!",
attributes = "%author{:active => true, :email => \"peter@example.org\"} Peter Parker",
metadata = [[
!!! XML
]],
complete_example = [[
!!! XML
%invoice
  %receipt Oz-Ware Purchase Invoice
  %date 2012-08-06

  %customer
    %first_name Dorothy
    %family_name Gale

  %items
    %li
      %part_no A4786
      %descrip Water Bucket (Filled)
      %price 1.47
      %quantity 4
    %li
      %part_no E1628
      %descrip High Heeled "Ruby" Slippers
      %size 8
      %price 133.7
      %quantity 1

  %billTo
    %street
      123 Tornado Alley
      Suite 16
    %city East Centerville
    %state KS

  %shipTo
    %street
      123 Tornado Alley
      Suite 16
    %city East Centerville
    %state KS

  %specialDelivery Follow the Yellow Brick Road to the Emerald City. Pay no attention to the man behind the curtain.
]]
         },
      },
      {
         id = "slim",
         name = "Slim",
         class = "haml",
         syntaxes = {
            null_values = nil,
            booleans = nil,
            integers = nil,
            floats = nil,
            strings = [[
span I'm a string.
span You can "quote" me.
span
  | Name	José
  | Loc	SF.
]],
            literal_strings = nil,
            multiline_strings = [[
p
  | Roses are red
  | Violets are blue

p
  | The quick brown
  | fox jumps over
  | the lazy dog.
]],
lists = [[
ul
  li 1
  li 2
  li 3

ul
  li Red
  li Yellow
  li Green
]],
maps = [[
map
  entry key="key_1"  Text
  entry key="key_2"  42
  entry key="key_3"  true
]],
comments = [[
/ Block Comment
  Line 2

/! HTML Comment (displayed in document)
]],
expressions = [[
- books = ['book 1', 'book 2', 'book 3']

- books.shuffle.each_with_index do |book, index|
  %h1= book

  - if book do
    %p This is a book
]],
string_interpolation = "span Hello, #{name}!",
attributes = "author active=\"true\" email=\"peter@example.org\"  Peter Parker",
metadata = [[
doctype XML
]],
complete_example = [[
doctype XML
invoice
  receipt Oz-Ware Purchase Invoice
  date 2012-08-06

  customer
    first_name Dorothy
    family_name Gale

  items
    li
      part_no A4786
      descrip Water Bucket (Filled)
      price 1.47
      quantity 4
    li
      part_no E1628
      descrip High Heeled "Ruby" Slippers
      size 8
      price 133.7
      quantity 1

  billTo
    street
      | 123 Tornado Alley
      | Suite 16
    city East Centerville
    state KS

  shipTo
    street
      | 123 Tornado Alley
      | Suite 16
    city East Centerville
    state KS

  specialDelivery Follow the Yellow Brick Road to the Emerald City. Pay no attention to the man behind the curtain.
]]
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
            function_definitions = [[
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
function_definitions = nil,
string_interpolation = nil,
attributes = nil,
metadata = "@schema dadl 0.1",
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
            function_definitions = [[
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
{ "Red", "Yellow", "Green" }
{ "Text", 42, true }
{ { 1, 2 }, { 3, 4, 5 } }
{ { 1, 2 }, { "a", "b", "c" } }
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
            function_definitions = [[
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
'("Red" "Yellow" "Green")
'("Text" 42 t)
'((1 2) (3 4 5))
'((1 2) ("a" "b" "c"))
]],
            maps = [[
;; Association lists:
'((key-1 . "Text") (key-2 . 42) (key-3 . t))

;; Property lists:
'(:key-1 "Text" :key-2 42 :key-3 t)
]],
            comments = [[
; Comment
]],
            function_definitions = [[
(lambda (a b) (+ a b))
]],
            string_interpolation = [[
(format "Hello, %s!" name)
]],
            attributes = nil,
         },
      },
      {
         id = "watson",
         name = "Watson",
         class = "plaintext",
         link = "https://github.com/genkami/watson",
         syntaxes = {
            null_values = ".",
            booleans = [[
zo
z
]],
integers = [[
Bububbbbubu
Bubbubbub
B
Bubububububububububububububububububububububububububububububububububububububububububububububububububububububububububububbubububu
]],
            floats = [[
Bububububububububububbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbi
Bubbbbbbbbbbbubbbubbbubbbbbubububbbubbubbububbbbbbbubbbbbbububbbbubbbubbbububbubububui
Bubbubububububububbbbbubbbbububububbubbubububbbbbubbubbbbububububbubbubububbbbbubbubbbbububububbubui
]],
            strings = [[
?Shaaahaaah-Shaaahahah-Shahaahahaah-Shaaaaa-Shahaaaaah-Shaaaaa-Shahahaaahah-Shahahaahaa-Shahahaaaha-Shahaahaaah-Shahaahahaha-Shahaaahahah-Shaahahaha-
?Shaahahaaah-Shahaahahahah-Shahahaahaah-Shaaaaa-Shahaaaahah-Shahaaaaah-Shahaahahaha-Shaaaaa-Shaaaaha-Shahahaaaah-Shahahaahaah-Shahaahahahah-Shahahaahaa-Shahaaahaah-Shaaaaha-Shaaaaa-Shahaahahaah-Shahaaahaah-Shaahahaha-
?Shahahaahahahah-Shaahahahaahah-Shaahahahahahah-Shaaahahaha-Shahaaaaah-Shahaahahaah-Shahaaahaah-Shaaah-Shaaahaaha-Shahaahahahah-Shahahaaahah-Shahaaaaahah-Shaahaahaaah-Shaaha-Shaaahahaa-Shahaahahahah-Shahaaaahah-Shaaah-Shaahaaahah-Shaaaahaha-Shaahahaha-
]],
            literal_strings = nil,
            multiline_strings = nil,
            lists = [[
@BububububububububububbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbisBubbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbisBubbbbbbbbbbbubbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbis
@?Shaahaaaha-Shahaaahaah-Shahaaahaa-?$Bubbububbbu!Bububbbubbu!Bububbububb!Bububbububb!Bububbubububu!Bubububbububu!s?Shaaaahahah-Shahahaaaha-Shahaaahaah-Shahaaahaah-Shahaahahaha-?
@?Shaahaahaa-Shahaaahaah-Shahahahaaa-Shahahaahaa-?Shaaaaaaaahaaaahaahaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaz?^!?
@@BububububububububububbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbisBubbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbiss@BubbbbbbbbbbbubbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbisBubbbbbbbbbbubbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbisBubbbbbbbbbbubbubbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbiss
@@BububububububububububbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbisBubbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbiss@?Shahaaaaah-?$Bububbbbub!s?Shahaaaahah-??
]],
            maps = [[
~?Shahaahaahah-Shahaaahaah-Shahahahaaah-Shaahahahahah-Shahaaahah-^!g$Bububbubbubu!Bububbbubbu!Bububububbbu!Bubbububububu!Bububbbbu!?Shaahaahaa-Shahaaahaah-Shahahahaaa-Shahahaahaa-g$Bububbubbubu!Bububbbubbu!Bububububbbu!Bubbububububu!Bububbbub!BubbbbbbbbubbbbubbubbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbiM
]],
            comments = nil,
            function_definitions = nil,
            string_interpolation = nil,
            attributes = nil,
            complete_example = [[
~?Shahaahaaah-Shahahaahaa-Shahaaahaah-Shahaahahaah-Shahahaaahah-v+$Bubububbbb!Bububbbbbu!Bubububbbub!Bubububbubb!Bubbububububu!Bububbububub!Bububbubububu!?Shaaaaaah-Shahaahaa-Shahaahahah-Shahahaaa-Shahaahaha-g$Bububbbubb!Bububbbubbu!Bubububbbubu!Bububbbbubu!Bubububbbub!Bububbubbbu!Bubububbbb!?Shaahaahahah-Shahaaaaah-Shahahaahaa-Shahaaahaah-Shahahaaaha-Shaaaaa-Shaaaaaha-Shahahaahaah-Shahaaaahah-Shahaahaahah-Shahaaahaah-Shahahaahaa-Shaaaaa-Shaahaaa-Shaaaahaha-Shahaahaaah-Shahaahahaa-Shahaahahaa-Shahaaahaah-Shahaaahaa-Shaahaaah-g$Bubububbbb!Bubububbbub!Bububbubbbu!Bububbbbubu!Bububbbubbu!BububububububububububbububububbbbbubbubbbbububububbubbubububbbbbubbubbbbububububbubbubububbbbbubbuiM?Shahahaaaah-Shahahaahaah-Shahaaaaah-Shahaahahaha-Shahahaahaa-Shahaahaaah-Shahahaahaa-Shahahahaaah-Shaaaaaaaaaahaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaazg?+$Bububbbubb!Bububbbubbu!Bubububbbubu!Bububbbbubu!Bubububbbub!Bububbubbbu!Bubububbbb!?Shaaahaaa-Shahaahaaah-Shahaaahahah-Shahaahaaa-Shaaaaa-Shaaahaaa-Shahaaahaah-Shahaaahaah-Shahaahahaa-Shahaaahaah-Shahaaahaa-Shaaaaa-Shaaaaha-Shaahaaaha-Shahahaahaah-Shahaaaaha-Shahahahaaah-Shaaaaha-Shaaaaa-Shaahaaahah-Shahaahahaa-Shahaahaaah-Shahahaaaa-Shahahaaaa-Shahaaahaah-Shahahaaaha-Shahahaaahah-g$Bubububbbubu!Bububbubbbu!Bububububbub!Bububbbubbu!BubbbbbbbbbubbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbiM?Shahahaaaa-Shahahaaaha-Shahaahaaah-Shahaaaahah-Shahaaahaah-Shaaaaaaaahahaaaaaahaahahaahahaaahahaaahahaaahahaaahahaaahahaaahahaaahahaaahahaaahahaaahahazg$Bubububbbbu!Bubububbubbu!Bububbbbbu!Bububbububub!Bubububbubb!Bububbubbbu!Bubububbubb!Bububububbbu!BububububububububububbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbiM?Shahahaaaa-Shahaaaaah-Shahahaaaha-Shahahaahaa-Shaahahahahah-Shahaahahaha-Shahaahahahah-$Bubbbbubbu!Bububbbbu!Bububbubub!Bububbbub!Bubububbb!MsM?Shahaaaaha-Shahaahaaah-Shahaahahaa-Shahaahahaa-Shaahaahaa-Shahaahahahah-+$Bubububbbubu!Bubububbubb!Bubububbbub!Bububbbubbu!Bububbbubbu!Bubububbubb!?Shahaaaah-Shahaaaha-Shahaaahah-Shaaaaa-Shaahaahaa-Shahaahahahah-Shahahaaaha-Shahaahahaha-Shahaaaaah-Shahaaahaa-Shahaahahahah-Shaaaaa-Shaaaaaah-Shahaahahaa-Shahaahahaa-Shahaaahaah-Shahahahaaah-Shaaha-Shaahaaahah-Shahahaahaah-Shahaahaaah-Shahahaahaa-Shahaaahaah-Shaaaaa-Shahaaaah-Shahaahaha-g$Bububbbbubu!Bububbubbbu!Bubububbubb!Bububububbbu!?Shaaaahaah-Shahaaaaah-Shahahaaahah-Shahahaahaa-Shaaaaa-Shaaaaahah-Shahaaahaah-Shahaahahaha-Shahahaahaa-Shahaaahaah-Shahahaaaha-Shahahaahaha-Shahaahaaah-Shahaahahaa-Shahaahahaa-Shahaaahaah-g$Bubububbbubu!Bubububbubb!Bububbbbbu!Bubububbubb!Bububbbubbu!?Shaaahaahah-Shaahaaahah-gg$Bubububbbubu!Bububbubbb!Bububbubbbu!Bubububbbb!Bubbubbubb!Bububbubububu!~?Shahahaaahah-Shahahaahaa-Shahahaaaha-Shahaaahaah-Shahaaahaah-Shahahaahaa-$Bububbbbu!Bububbbub!Bububbbubu!Bubbbbb!Bubbubbubb!Bububbubububu!Bubububbbub!Bububbububub!Bububbbbbu!Bububbbubb!Bububbubububu!Bubbbbb!Bubbbbbbu!Bububbububb!Bububbububb!Bububbbubbu!Bububububbbu!Bubbub!Bubbubbbubu!Bubububbubbu!Bububbubbbu!Bubububbubb!Bububbbubbu!Bubbbbb!Bububbbbu!Bububbubub!M?Shahaaaahah-Shahaahaaah-Shahahaahaa-Shahahahaaah-$Bubbbbubbu!Bububbbbbu!Bubububbbubu!Bubububbubb!Bubbbbb!Bubbbbbubu!Bububbbubbu!Bububbububub!Bubububbubb!Bububbbubbu!Bubububbbub!Bubububbubub!Bububbubbbu!Bububbububb!Bububbububb!Bububbbubbu!M?Shahahaaahah-Shahahaahaa-Shahaaaaah-Shahahaahaa-Shahaaahaah-$Bubbbubbubu!Bubbubbbubu!MM?Shahahaaahah-Shahahaaaa-Shahaaahaah-Shahaaaahah-Shahaahaaah-Shahaaaaah-Shahaahahaa-Shaaaahaa-Shahaaahaah-Shahaahahaa-Shahaahaaah-Shahahaahaha-Shahaaahaah-Shahahaaaha-Shahahahaaah-$Bubbbbubub!Bububbubububu!Bububbububb!Bububbububb!Bububbubububu!Bubububbububu!Bubbbbb!Bubububbubb!Bububbubbb!Bububbbubbu!Bubbbbb!Bubbububbbu!Bububbbubbu!Bububbububb!Bububbububb!Bububbubububu!Bubububbububu!Bubbbbb!Bubbbbbub!Bubububbbub!Bububbubbbu!Bububbbbubu!Bububbubbubu!Bubbbbb!Bubbubbbub!Bububbubububu!Bububbbbbu!Bububbbubb!Bubbbbb!Bubububbubb!Bububbubububu!Bubbbbb!Bubububbubb!Bububbubbb!Bububbbubbu!Bubbbbb!Bubbbbubbu!Bububbububbu!Bububbbubbu!Bubububbbub!Bububbbbbu!Bububbububb!Bububbbubb!Bubbbbb!Bubbbbbubu!Bububbubbbu!Bubububbubb!Bububububbbu!Bubbububub!Bubbbbb!Bubbubbbb!Bububbbbbu!Bububububbbu!Bubbbbb!Bububbububub!Bububbubububu!Bubbbbb!Bububbbbbu!Bubububbubb!Bubububbubb!Bububbbubbu!Bububbububub!Bubububbubb!Bububbubbbu!Bububbubububu!Bububbububub!Bubbbbb!Bubububbubb!Bububbubububu!Bubbbbb!Bubububbubb!Bububbubbb!Bububbbubbu!Bubbbbb!Bububbububbu!Bububbbbbu!Bububbububub!Bubbbbb!Bububbbbub!Bububbbubbu!Bububbubbb!Bububbubbbu!Bububbububub!Bububbbubb!Bubbbbb!Bubububbubb!Bububbubbb!Bububbbubbu!Bubbbbb!Bububbbbubu!Bubububbubbu!Bubububbbub!Bubububbubb!Bububbbbbu!Bububbubbbu!Bububbububub!Bubbububub!M?Shahahaaaha-Shahaaahaah-Shahaaaahah-Shahaaahaah-Shahaahaaah-Shahahaaaa-Shahahaahaa-$Bubbbubububu!Bububububbub!Bubbububbu!Bubbubbububu!Bububbbbbu!Bubububbbub!Bububbbubbu!Bubbbbb!Bubbubbbb!Bubububbubbu!Bubububbbub!Bububbbbubu!Bububbubbb!Bububbbbbu!Bubububbbubu!Bububbbubbu!Bubbbbb!Bubbbubbbu!Bububbububub!Bubububbubub!Bububbubububu!Bububbubbbu!Bububbbbubu!Bububbbubbu!M?Shahaaahaa-Shahaaaaah-Shahahaahaa-Shahaaahaah-$Bububbbub!Bububbbb!Bububbbbu!Bububbbub!Bubbububbu!Bububbbb!Bubububbb!Bubbububbu!Bububbbb!Bububbubub!M?Shahaaaahah-Shahahaahaah-Shahahaaahah-Shahahaahaa-Shahaahahahah-Shahaahahaah-Shahaaahaah-Shahahaaaha-+$Bububbbubub!Bububbbbbu!Bububbububbu!Bububbubbbu!Bububbububb!Bububububbbu!Bubbububububu!Bububbububub!Bububbbbbu!Bububbububbu!Bububbbubbu!?Shaaaahahah-Shahaaaaah-Shahaahahaa-Shahaaahaah-g$Bububbbubub!Bububbubbbu!Bubububbbub!Bubububbbubu!Bubububbubb!Bubbububububu!Bububbububub!Bububbbbbu!Bububbububbu!Bububbbubbu!?Shaaaahaa-Shahaahahahah-Shahahaaaha-Shahaahahahah-Shahahaahaa-Shahaahaaa-Shahahahaaah-gg
]]
         },
      }
   }
}
