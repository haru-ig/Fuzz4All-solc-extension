pragma solidity ^0.8.0;
contract mutationv080 {
  constructor () public {}
  function f() internal pure returns(uint8) { uint8 c; unchecked {uint16 sc = 32; } return sc;}
}

pragma solidity ^0.8.0;
contract mutationv080 {
  constructor () public {}
  function f() internal pure returns(uint8) { uint8 c; unchecked {uint sc = 32; } return 31;}
}
