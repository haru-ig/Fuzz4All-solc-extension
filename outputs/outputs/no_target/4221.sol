pragma solidity ^0.8.0;
contract P13 {
  using P12 for uint;
  function i(uint x) public returns (uint) {
    return x.mul(x);
  }
}
