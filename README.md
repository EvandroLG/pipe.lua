## pipe  &middot; [![Build Status](https://travis-ci.org/EvandroLG/pipe.lua.svg?branch=master)](https://travis-ci.org/pipe.lua) [![license](https://badgen.now.sh/badge/license/MIT)](./LICENSE)
An implementation of the `pipeline` operator in Lua

## Installation
To install `pipe`, run:
```sh
$ luarocks install pipe
```

## How does it work?
`pipe` performs left-to-right function composition. See an example:

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
