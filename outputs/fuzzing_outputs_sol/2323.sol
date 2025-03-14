pragma solidity ^0.8.0;
contract Fallback {
  function payableReceive() public pure {
    throw;
  }
}
contract Modificator {
  function modify(address payable _target, uint _amount) public payable {
    _target.transfer(_amount);
  }
}
contract Caller {
  function payableCall(uint _value, address _target, bytes memory _data) public {
    Modificator(address(_target)).modify(_target, _value);
    new Fallback().payableReceive.value(_value)(_data);
  }
}
