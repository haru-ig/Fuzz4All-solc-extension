pragma solidity ^0.8.0;
contract C {
  mapping (uint => uint) public counter;
  uint internal _count;
  constructor() {
    counter[_count] = 0;
  }
  function checkCounter(uint id) public view returns (uint) {
    return counter[id];
  }
  function setCounter(uint id, uint x) public {
    counter[id] = x;
  }
  function mutatedCounter(uint id, uint x) public returns (uint) {
    counter[id] += x;
    return _count;
  }
  event CounterUpdated(uint indexed id, uint indexed updatedValue);
}

pragma solidity ^0.8.0;
contract C {
  mapping (uint => uint) public counter;
  uint internal _count;
  constructor() {
    counter[_count] = 0;
  }
  function setCounter(uint id, uint x) public {
    counter[id] = x;
  }
  function checkCounter(uint id) public view returns (uint) {
    return counter[id];
  }
  function mutatedCounter(uint id, uint x) public {
    require(counter[id] > 100, "Counter must increase by 100");
    counter[id] = counter[id] + x;
  }
  event CounterUpdated(uint indexed id, uint indexed updatedValue);
}

pragma solidity ^0.8.0;
contract C {
  address payable to;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter(uint id) public view returns (uint) {
    return counter[id];
  }



  address payable payable payable payee;

  event CounterUpdated(uint indexed id, uint indexed updatedValue);
}

pragma solidity ^0.8.0;
contract C {
  address payable to;
  constructor(address payable payee) public {
    to = payee;
  }
  function checkCounter(uint
