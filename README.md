## pipe
An implementation of the `pipeline` operator in Lua

[![Build Status](https://travis-ci.org/EvandroLG/pipe.lua.svg?branch=master)](https://travis-ci.org/EvandroLG/pipe.lua) [![license](https://badgen.now.sh/badge/license/MIT)](./LICENSE)

## Installation
To install `pipe`, run:
```sh
$ luarocks install pipe
```

## How does it work?
`pipe` function pipes the value of an expression into a function that allows the creation of chained function calls.
`pipe` performs left-to-right function composition. See the example below:

```lua
local pipe = require('pipe')

function exclamation(str)
  return str .. '!'
end

local wrapped = pipe(string.upper, exclamation)
wrapped('Lua is nice') -- LUA IS NICE!
```

## License
[MIT](https://github.com/EvandroLG/pipe.lua/blob/master/LICENSE)
