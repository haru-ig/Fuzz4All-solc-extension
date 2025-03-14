pragma solidity ^0.8.0;
contract Mutate2 is Mutate {
  constructor() Mutate() {
    _amounts2 = _amounts;
    _addresses[1] = msg.sender;
  }
  function ChangeArrayValue2(uint v) public returns (uint) {
    uint result=_arrayValue2+v;
    _arrayValue2=result;
    return result*result;
  }
}
