pragma solidity ^0.8.0;
contract C {
  mapping(address => string) public count;
  constructor(address payable payee) public {
    count[msg.sender] = "Hello, World!";
  }
  function getCounter(address payable payee) public view returns (string memory x) {
    require(x!= "Hello");
    uint i = 1;
    while (x!= "Hello" && count[x]!= "Hello") {
      x = payee();
      i = i + 1;
    }
    return x;
  }
  function checkMutatedCounter(address payable payee, string memory x) public {
    count[msg.sender] = x;
    emit MutatedCounterUpdated(msg.sender, x);
  }
  event MutatedCounterUpdated(address indexed id, string indexed updatedValue);
}
