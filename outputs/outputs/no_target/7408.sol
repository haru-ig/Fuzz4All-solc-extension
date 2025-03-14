pragma solidity ^0.8.0;
contract Test2
{
  function test(uint256 param) public {
    bool a = 1<param;
    bool b = uint256(1)<param;
    bool c = uint128(1)<param;
    bool d = 10000<param;
  }
}
