pragma solidity ^0.8.0;
contract P7{
  uint internal x;
  function h1() public returns (uint) { return uint(x) + 1; }
  function h2() public returns (uint) { return uint32(x) + 1; }
  function h3() public returns (uint) { return uint64(x) + 1; }
  function h4() public returns (uint) { return uint128(x) + 1; }
  function h5() public returns (uint) { return uint256(x) + 1; }
}
