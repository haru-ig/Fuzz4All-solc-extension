pragma solidity ^0.8.0;
contract Mutability1 {
  uint public constant ZERO = 0;
  uint public value;
  constructor () {
    value = ZERO;
    value += 1;
    value += 2;
  }
  function setValue (uint _value) public {
    value = _value;
  }
}
contract Mutability3 {
  uint public constant ZERO = 0;
  uint public value;
  constructor () {
    value = ZERO;
    assembly{
        mstore(0x40, 0)

        gas()
        value += 1
    }
  }
  function setValue (uint _value) public {
    value = _value;
  }
}
contract Mutability4 {
  uint public constant ZERO = 0;
  uint public value2;
  uint public value1;
  constructor () {
    value1 = 2;
    value2 = 3;
  }
  function getValue1 (bytes memory _input) public {
    if (keccak256(abi.encodePacked(_input)) == keccak256(abi.encodePacked(keccak256(abi.encodePacked(\""_input+"_0\""))))) value1 += 1;
  }
  function getValue2 (uint _value) public {
    value2 = _value;
  }
  function setValue (bytes memory _input, uint _value) public {
    if (keccak256(abi.encodePacked(_input)) == keccak256(abi.encodePacked(keccak256(abi.encodePacked(\""_input+"_0\""))))) value1 += _value;
    value2 = _value;
  }
}
contract Mutability5 {
  uint public constant ZERO = 0;
  mapping (contract2) storage contractMap;
  constructor () {
    contractMap[contract2(0x0)] = contract2(0x1);
  }
  function getValue (contract2 _data) public {
    if (_data == contract2(address(this)).getValue() && contractMap[_data] == contract2(address(this)).getValue()) value2 += 2;
  }
  struct contract2 {
    uint storedValue;
    constructor (uint _value) public {
      storedValue = _value;
    }
    function getValue () public pure returns (uint) {
      return storedValue;
    }
    mapping (contract2) storage contractMap;
    function setValue (contract2 _data) public {
      storedValue = _data.getValue();
    }
  }
}
```
It returns 6 for the first two mutated programs. Here is the second and third mutated
