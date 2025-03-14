pragma solidity ^0.8.0;
contract C {
  constructor(address payable payee) public {
    uint counter = 10;
    to = payee;
  }
  function mutatedCounter() external returns (uint) {
    return counter + 1;
  }
  function checkCounter() external returns (uint) {
    return counter;
  }
}
contract C {
  address payable to;
  uint public counter = 10;
  constructor(address payable payee) public {
    to = payee;
  }
  function mutatedCounter() external returns (uint) {
    return counter;
  }
  function checkCounter() external returns (uint) {
    return counter++;
  }
}
contract C {
    address payable to;
    uint public counter = 10;

    constructor(address payable payee) public {
      to = payee;
    }

    function mutatedCounter() external returns(uint) {
      return counter;
    }

    function setCounter(uint _counter) external {
      counter = _counter;
    }
}
contract C {
  bytes32 key;
    bytes32 public key2;
    uint public key3;
  constructor(
    string[] memory _key,string[] memory _value
  ) public {
    uint i;
    for (i = 0; i < _key.length; i = i + 2) {
      (key, key2, key3) = (keccak256(_key[i]), keccak256(_key[i + 1]), _value[i / 2]);
      (uint256, uint256) = (key, key3);
    }
  }
}
