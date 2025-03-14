pragma solidity ^0.8.0;
contract P6{
  function z() public pure returns(uint) { return 1 + 3; }
}
contract P7 {
  uint internal x;
  function h() public pure {
    x = 2 + 1;
  }
  function t() internal returns (uint) { return x; }
}
contract P8 {
  uint internal x;
  function h() public pure returns(uint) {
    x = 2 + 1;
    return x;
  }
}
