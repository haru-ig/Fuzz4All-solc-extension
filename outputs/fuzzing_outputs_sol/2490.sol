pragma solidity ^0.8.0;
contract Mutate {
  function pay(uint x, uint y) public payable {
    x += y;
  }
}
