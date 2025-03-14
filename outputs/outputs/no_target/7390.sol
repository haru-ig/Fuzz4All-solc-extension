pragma solidity ^0.8.0;
contract Test{
  uint256 foo;
  function test() public pure returns(uint256 value){
    function f(uint256 x, uint256 y) internal pure returns(uint256 z) {
      z = x + y;
    }
    f(1, 2);
  }
}
