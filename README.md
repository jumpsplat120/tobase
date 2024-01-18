# tobase
 The opposite of lua's `tonumber`.

A simple function that can do the reverse of the builtin `tonumber` function.

## Usage

```lua
require("tobase")

local value, a, b

value = 42
a = tobase(value, 16)
b = tonumber(a, 16)

print(a)          -- "2A"
print(value == b) -- true
```

## Notes

The function will always return a string, even if the value can be represented by a decimal number. So `tobase(5, 2)` will return `"101"`, not `101`.

Non whole base numbers will not function as expected. While they won't throw an error, due to the internal flooring that happens, you will instead just recieve a unxpected value.

String characters are retrieved using `string.char`, and start from index 55. So if the function has been changed, or you really start getting up there in bases, you may not get exactly what you expect. For example, `tobase` does not intentionally follow [RFC 4648](https://datatracker.ietf.org/doc/html/rfc4648#section-4).