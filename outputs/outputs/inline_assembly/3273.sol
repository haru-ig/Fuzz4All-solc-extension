pragma solidity ^0.8.0;
contract Mutate4 {
  uint public _contractValue;
  uint public _originalValue = 200;
  mapping(address => uint) private _addressToValue;
  function ChangeValue(uint changedValue) public returns (uint){
      _contractValue += changedValue;
      return _contractValue;
  }
  function ChangeValueByContract(uint changedValue) public returns (uint){
    revert();
    return _contractValue;
  }
  function ChangeValueByAddress(uint changedValue) public returns (uint){
    _addressToValue[msg.sender] += changedValue;
    return _addressToValue[msg.sender];
  }
}


pragma solidity ^0.8.0;
contract Mutate4 {
  uint public _lastValue = 10;

  function ChangeValue(uint newValue) public returns (uint){
      _lastValue = newValue;
      return _lastValue;
  }

  function ChangeValueByAddress(uint newValue) public returns (uint){
    _lastValue = newValue;
    return _lastValue;
  }
}
