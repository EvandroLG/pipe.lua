function pipe(...)
  local arg = {...}

  return function(...)
    local result = nil

    for _, fn in ipairs(arg) do
      result = fn(result == nil and ... or result)
    end

    return result
  end
end

return pipe
