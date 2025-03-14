pragma solidity ^0.8.0;
contract Modifications {
  function test() public pure {
    uint256 a = 100 - int(uint256(-123));
    a -= (uint256(100) - int(uint256(-123)));
  }
}
