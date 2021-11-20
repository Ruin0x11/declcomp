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
         },
      },
      {
         id = "yaml",
         name = "YAML",
         syntaxes = {
            null_values = "null",
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

# Hexadecimal with prefix `0x`:
0xDEADBEEF
0xdeadbeef
0xdead_beef

# Octal with prefix `0o`:
0o01234567
0o755

# Binary with prefix `0b`:
0b11010110
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
str1: "I'm a string."
str2: "You can "quote" me."
str3: "Name\tJos\u00E9\nLoc\tSF."
]],
literal_strings = nil,
multiline_strings = [[
str1: |
  Roses are red
  Violets are blue

str2: |-
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

# Hexadecimal with prefix `0x`:
0xDEADBEEF
0xdeadbeef
0xdead_beef

# Octal with prefix `0o`:
0o01234567
0o755

# Binary with prefix `0b`:
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

// Hexadecimal with prefix `0x`:
0xdeadbeef
]],
floats = [[
+1.0
3.1415
-0.01

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
]],
            attributes = nil,
            other = [[
// Includes:

include url("http://mydomain.com/myfile.conf")
include "path/to/file.conf"
include file("path/to/file.conf")
conf = include "file.conf"

// Substitutions:

standard-timeout = 10ms
foo.timeout = ${standard-timeout}
bar.timeout = ${standard-timeout}
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
// C++ style

/*
C style multiline
*/

tag /*foo=true*/ bar=false

# Shell style

-- Lua style
]],
            functions = nil,
            string_interpolation = nil,
            attributes = [[
author "Peter Parker" email="peter@example.org" active=true
]],
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

// Hexadecimal with prefix `0x`:
0xDEADBEEF
0xdeadbeef
0xdead_beef

// Octal with prefix `0o`:
0o01234567
0o755

// Binary with prefix `0b`:
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
// C style

/*
C style multiline
*/

tag /*foo=true*/ bar=false

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
numbers (u8)10 (i32)20 myfloat=(f32)1.5 {
  strings (uuid)"123e4567-e89b-12d3-a456-426614174000" (date)"2021-02-03" filter=(regex)r"$\d+"
  (author)person name="Alex"
}
]],
            attributes = [[
author "Peter Parker" email="peter@example.org" active=true
]],
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

# Hexadecimal with prefix `0x`:
0xDEADBEEF
0xdeadbeef
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
            null_values = nil,
            booleans = nil,
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
         },
      },
      {
         id = "ron",
         name = "RON",
         class = "plaintext",
         link = "https://github.com/ron-rs/ron",
         syntaxes = {
            null_values = [[
# Option<T> only
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

# Grouping:
1_000
5_349_221
53_49_221
1_2_3_4_5

# Hexadecimal with prefix `0x`:
0xDEADBEEF
0xdeadbeef
0xdead_beef

# Octal with prefix `0o`:
0o01234567
0o755

# Binary with prefix `0b`:
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
(true,)
]=],
            maps = [[
# Map syntax:

map: {
   key_1: "Text",
   key_2: 42,
   key_3: true
}

# Struct syntax:

map: (
   key_1: "Text",
   key_2: 42,
   key_3: true
)

map: Map(
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
# Chars:

'a'
'\n'

# Unit structs:

Unit
()

# Optionals/Enum variants:

Some(42)
None
PageLoad
KeyPress('c')

# Structs:

Struct(field1: "Text", field2: 42, field3: true)
TupleStruct(1, 2, 3)
]]
         },
      },
      {
         id = "fluent",
         name = "Fluent",
         syntaxes = {
            null_values = nil,
            booleans = nil,
            integers = nil,
            floats = nil,
            strings = nil,
            literal_strings = nil,
            multiline_strings = nil,
            lists = nil,
            maps = nil,
            comments = nil,
            functions = nil,
            string_interpolation = nil,
            attributes = nil,
         },
      },
      {
         id = "nix",
         name = "Nix",
         syntaxes = {
            null_values = nil,
            booleans = nil,
            integers = nil,
            floats = nil,
            strings = nil,
            literal_strings = nil,
            multiline_strings = nil,
            lists = nil,
            maps = nil,
            comments = nil,
            functions = nil,
            string_interpolation = nil,
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
            comments = [=[
-- Comment

--[[
   Line 1
   Line 2
   Line 3
--]]
]=],
            functions = [[
function(a, b) return a + b end
]],
            string_interpolation = [[
("Hello, %s!"):format(name)
]],
            attributes = nil,
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
