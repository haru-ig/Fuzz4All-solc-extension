pragma solidity ^0.8.0;
contract Caller {
  function callBackFunc(uint _value) public payable {
    uint sum;
    uint v = 1;
    unchecked {
      sum += (_value * _value * _value * _value);
    }
  }
}
