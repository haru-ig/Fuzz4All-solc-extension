pragma solidity ^0.8.0;
contract P12{
  function k() public pure returns uint {
    return 1;
  }
  function j() public pure returns uint {
    return 30;
  }
  function i(uint x) public pure returns (uint) {
    return x+k()+j();
  }
  function q(uint y) public pure returns (uint) {
    return i(y-123);
  }
}
