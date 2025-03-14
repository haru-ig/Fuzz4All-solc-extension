pragma solidity ^0.8.0;
contract SmartContract
{
  function test() public pure returns (uint8, uint256, uint64, int8, int256, int64)
  {
    require(false);
    (uint8  x__unused, uint256 y__unused, uint64 z__unused, int8 a__unused, int256 b__unused, int64 c__unused) = test();
    return (x__unused, y__unused, z__unused, a__unused, b__unused, c__unused) ^ (a__unused, 1, z__unused, y__unused, x__unused, 2);
  }
  receive() external payable { require(false); }
}
