pragma solidity ^0.8.0;
contract mutationv080 {
  constructor () public {}
  function f() internal pure returns(uint8) { uint8 c; unchecked {uint8 sc = 32; } return c;}
}
