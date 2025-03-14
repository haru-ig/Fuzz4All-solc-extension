pragma solidity ^0.8.0;
contract Mutation_FunctionCaller1 {
  function m() pure external {}
}

pragma solidity ^0.8.0;
contract Mutation_FunctionCaller2 {
  function m() pure external returns (uint) {}
}

pragma solidity ^0.8.0;
contract Mutation_FunctionCaller3 {
  mapping (uint => uint) private _stored_values;
  uint internal _value;

  function change() public { _stored_values[_value] = _value; }
  function revert() public returns (uint) { revert(); }
}


pragma solidity ^0.8.0;
contract Mutation_FunctionCaller4 {
  uint _value = 0;

  function change() public {
    require(msg.sender == (address(_value)), "Invalid origin");
    _value = 100;
  }
  function revert() public returns (uint) { revert(); }
}
