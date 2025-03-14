pragma solidity ^0.8.0;
contract C is Cold {
  address payable to;
  uint public counter = 0;
  constructor(address payable payee) public Cold(payee) {}

  modifier updatenumber() {
    bytes32 k = keccak256(abi.encodePacked("0x", block.timestamp));
    counter++;
    require(counter.sub(k) <= 100, "Too many updates");
    _;
  }

  function checkCounter() public view returns (uint) {
    return counter;
  }
  function setCounter(uint x) public {
    counter = x;
    emit CounterUpdated(counter);
  }
  function mutatedCounter(uint x) public returns (uint) {
    counter += x;
    uint c;
    return counter;
  }
  event CounterUpdated(uint indexed updatedValue);
}
