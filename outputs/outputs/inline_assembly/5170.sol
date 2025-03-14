pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 0;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter() public view returns (uint) {
    return counter;
  }
  function mutatedCounter(uint x) public returns (uint) {
    counter += x;
    uint c;
    return counter;
  }
  function pay() public returns (uint) {
    uint c;
    counter += 5;
    return counter;
  }
  function payWithGasFee() public returns (uint) {
    uint c;
    counter += 9;
    require(counter == 6, "something went wrong");
    c = counter;
    require(c == 10, "something went wrong");
  }
  function payWithGasFeeToo() public returns (uint) {
    uint c;
    counter += 11;
    require(counter == 12, "something went wrong");
    c = counter;
    require(c == 13, "something went wrong");
  }
  function mutatedPayWithGasFee() public returns (uint) {
    require(counter == 6, "");
    uint c;
    pay();
    c = counter;
    require(c == 8, "something went wrong");
  }
  function mutatedPayWithGasFeeToo() public returns (uint) {
    require(counter == 6, "");
    uint c;
    payWithGasFee();
    c = counter;
    require(c == 13, "something went wrong");
    c = counter;
    require(counter == c + 14, "something went wrong");
  }
}
