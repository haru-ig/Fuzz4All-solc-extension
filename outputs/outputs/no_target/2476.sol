pragma solidity ^0.8.0;
contract mutationv080 {
  constructor () internal { uint256 x; unchecked { x = 4294967295; }   }
  function f() internal pure returns(uint256) { x = 0; unchecked {uint256 sc = 32; } return x;}
}

pragma solidity ^0.8.0;

contract mutationVisibility {
  constructor () public {}

  function f() internal pure returns(uint) { uint256 c; unchecked {uint256 sc = 0; } return c;}
}
