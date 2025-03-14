pragma solidity ^0.8.0;
contract C {
  address payable to;
  uint public counter = 10;
  constructor(address payable payee) public {
    to = payee;
  }
  function mutatedCounter() internal returns (uint) {
    counter = 3;
    return counter;
  }
}

pragma solidity >=0.8.0;
contract C {
  uint public counter = 10;
  constructor(uint _counter) public {
    counter = _counter;
  }
  function checkMutated() external view returns (uint) {
    return counter - 2;
  }
  function checkCheck() external view returns (uint) {
    return counter - (counter + 11);
  }
}

pragma solidity>=0.8.0;
contract C {
  uint public counter = 10;
  constructor(uint _counter) public {
    counter = _counter;
  }
  function mutatedCounter() internal returns (uint) {
    counter--;
    return counter;
  }
  function checkMutated() external view returns (uint) {
    counter++;
    return counter;
  }
}

pragma solidity>=0.8.0;
contract C {
  uint public counter = 10;
  constructor(uint _counter) public {
    counter = _counter;
  }
  function mutatedCounter() internal returns (uint) {
    counter--;
    return counter;
  }
  function inlinedMutatedCounter() internal mutates {
    counter = mutatedCounter();
  }
  function checkMutated() external view returns (uint) {
    inlinedMutatedCounter();
    return counter;
  }
}

pragma solidity>=0.8.0;
contract C {
  uint public counter = 10;
  constructor(uint _counter) public {
    counter = _counter;
  }
  function mutatedCounter() internal returns (uint) {
    counter--;
    return counter;
  }
  function checkMutated() external view returns (uint) {
    counter++;
    return counter;
  }
  function checkCheck() external view returns (uint) {
    return mutatedCounter() + (counter + 33);
