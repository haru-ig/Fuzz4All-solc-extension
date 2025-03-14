pragma solidity ^0.8.0;
contract SomeContract {
  string msg = 'Hello';
  function doSomething(bytes32 data) public {
    msg = string(data);
  }
}

contract MutatedContract {
  uint public value = 9;
  function setNewValue(uint somethingValue) public {
    uint previousValue = value;
    value = value + 123;
    msg += previousValue.toString();
    msg += somethingValue.toString();
    msg += value.toString();
  }
  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}

pragma solidity ^0.8.0;
contract SomeContract {
  string msg = 'Hello World';
  function doSomething(bytes32 data) public {
    msg = string(data);
  }
  function returnMsg() public view returns(string memory) {
    return msg;
  }
}

contract MutatedContract {
  uint public value = 10;
  function setNewValue(uint somethingValue) public {
    uint previousValue = value;
    value = value + 123;
    msg += previousValue.toString();
    msg += somethingValue.toString();
    msg += value.toString();
  }
  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}

contract MutatedContract {
  uint public value = 100;
  string msg ='msg';
  function setNewValue(uint somethingValue) public {
    uint previousValue = value;
    value = value + 123;
    emit MyEvent(msg);
    msg += previousValue.toString();
    msg += somethingValue.toString();
    msg += value.toString();
  }
  function emit_my_event(string memory name) public{
    emit MyEvent(name);
  }
  modifier only_for_testing_purposes() {
    msg += value.toString();
    _;
    msg += 'this is the end!';
  }
  function retrieveNewValue() public view returns(uint) {
    return value;
  }
}
contract MutatedContract {
  uint public value = 100;
  string msg ='msg';
  bytes4 public event_to_be_emitted = bytes4(keccak256('my_event(bytes32)'));
  constructor() public {
   msg
