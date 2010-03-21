$bindings = {}
def save_binding(key, &block)
  $bindings[key] = block.binding
  block.call
end
def use_binding_to_eval(key, string)
  b = $bindings[key]
  b ? eval(string,b) : "invalid key"
end