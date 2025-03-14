pragma solidity ^0.8.0;
contract test_bug492873259649 {
  uint x;
  uint y;
  function test() public { x = 1; x = 2; y = 3; y = 4; }
}
