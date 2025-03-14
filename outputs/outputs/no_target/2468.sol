pragma solidity ^0.8.0;
contract mutationv080 {
  constructor () public {}
  function f() pure public returns(uint8) { uint8 c, sc = 32; return c;}
}

pragma solidity ^0.7.0;
contract mutationv073 {
  constructor () public {}
  function f() public pure returns(uint8) { uint8 c; unchecked {uint8 sc = 32; } return c;}
}
