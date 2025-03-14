pragma solidity ^0.8.0;
contract C {
  address payable to;
  mapping(address => uint[]) public counter;
  constructor(address payable payee) public {
    to = payee;
  }

  function checkCounter(uint id) public view returns (uint) {
    return counter[id];
  }

  function setCounter(uint id, uint x) public {
    counter[to][id] = x;
  }

  function mutatedCounter(uint id, uint x) public returns (uint) {
    uint c;
    for (uint i = 0; i < 2; i++) {
      c += counter[to][id] + x;
    }
    return c;
  }

  event CounterUpdated(uint indexed id, uint indexed updatedValue);
}


pragma solidity >0.7.0;
import "../c.sol";
contract C {}
contract C2 is C {}
contract Test {
  C c;
  constructor() public {
    c.to.call{value: 2}() = C2{ value: 20 }();
  }
}
