local test = require('simple_test')
local pipe = require('pipe')

test('pipe', function(a)
  function exclamation(str)
    return str .. '!'
  end

  function rep(str)
    return string.rep(str, 2)
  end

  a.equal(
    pipe(string.upper, exclamation, exclamation, rep)('Lua is nice'),
    'LUA IS NICE!!LUA IS NICE!!'
  )
end)
