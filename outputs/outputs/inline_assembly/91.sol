pragma solidity ^0.8.0;
contract A {
  uint8 public _number;
  bytes32 public _str;
  constructor(string memory str) {
    _number = 0;
    _str = str;
  }
  function decrementNumber() public {
    _number = _number - 1;
  }
}
contract C {
  uint8 public _number;
  bytes32 public _str;
  constructor(string calldata str) {
    _number = 0xA;
    _str = str;
  }
  function decrementNumber() public {
    _number = _number - 1;
  }
}
contract D {
  uint8 public _number;
  bytes32 public _str;
  constructor(string memory str) {
    _number = 0;
    _str = str;
  }
  function decrementNumber() public {
    _number = _number - 128;
  }
}
contract E {
    constructor(bytes32 _tokenAddress, uint8 _value, string calldata _data) public {
        emit TokenTransfered(_tokenAddress, _value, _data);
    }
    function TokenTransfered(bytes32 _tokenAddress, uint8 _value, string calldata _data) public;
}
