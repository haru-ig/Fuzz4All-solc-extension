pragma solidity ^0.8.0;
contract A {
  function checkCounter(uint id) public view returns (uint);
}
contract C is A {
  uint[] public counter;
  uint indexed _id;
  constructor(uint id, address payable payee) public {
    counter[_id] = 0;
    _id = id;
    to = payee;
  }
  function checkCounter(uint id) public view returns (uint) {
    uint x = counter[id];
    counter[id] = 5;
    uint y = counter[0];
    counter[0] = x + y;
    return counter[0];
  }
  function setCounter(uint x) public {
    to.sendvalue(x);
    counter[_id] = x;
    _;
  }
  function mutatedCounter(uint x) public returns (uint) {
    uint c;
    uint id = msg.sender.type();
    counter[id] = 0;
    to.sendvalue(x);
    counter[0] = 2;
    (c, id) = (counter[id], counter[0]);
    counter[id] = c;
    (x, id) = (counter[id], counter[0]);
    counter[id] = msg.sender.add(x);
    return identifier(id);

  }
  function identifier(uint id) public view returns (uint) {
    return counter[id];
  }
  event CounterUpdated(uint indexed id, uint indexed updatedValue);
}
