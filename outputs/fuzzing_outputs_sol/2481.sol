pragma solidity ^0.8.0;
contract ReturnNull {
  function pay(uint x, uint y) public payable returns (uint) {
    return (x + y);
  }
}
