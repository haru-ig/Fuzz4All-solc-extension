pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint[] public counter;
  modifier withCounter(uint id) {
    {to.call{value: 0}(abi.encodeWithSelector(this.checkCounter.selector, id))} < counter[id];
  }
  constructor(address payable payee) public {
    require(payee!= address(0));
    to = payee;
    _;
  }
  function setCounter(uint id, uint x) public {
    _;
    counter[id] = x;
    emit CounterUpdated(id, x);
  }
  function checkCounter(uint id) public view returns (uint) {
    return counter[id];
  }
  function mutatedCounter(uint id, uint x) public returns (uint) {
    counter[id] += x;
    uint c;
    while (counter[id]!= uint(c = c + 1));
    return c
