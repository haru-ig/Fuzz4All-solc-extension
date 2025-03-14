pragma solidity ^0.8.0;
contract ReturnValue {
  function pay(uint x, uint y) public payable returns (uint) {
    return (0.01 * (x + y));
  }
}
