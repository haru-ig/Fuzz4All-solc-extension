pragma solidity ^0.8.0;
contract P13 {
  function i(uint n) pure public returns (uint) {
    require(m() > type(uint).max);
    return 1;
  }
  function m() public pure returns (uint) {
    return 1;
  }
}
