## pipe
An implementation of the pipeline operator in Lua

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
