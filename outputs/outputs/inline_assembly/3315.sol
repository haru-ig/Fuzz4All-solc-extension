pragma solidity ^0.8.0;
contract CallMutabilityThree {
  address payable public target0;
  address payable public target1;
  uint public value;
  constructor(address payable _target0, address payable _target1, uint _value) {
    target0 = _target0;
    target1 = _target1;
    value = _value;
  }
  function doSomething() public {
    address payable selfAddress = address(this);
    if (callTargetAddress(selfAddress, target0, value)) {
      selfAddress = getReturnAddress();
      if (!target0.sendValue(selfAddress, value)) revert();
    }
    if (callTargetAddress(selfAddress, target1, value)) {
      selfAddress = getReturnAddress();
      if (!target1.sendValue(selfAddress, value)) revert();
    }
  }

  function getReturnAddress() private returns (address payable) {
    assembly {
      returndatacopy(0x40, returnaddress(), 0x20)
    }
  }
  function callTargetAddress(address payable _this, address _target, uint _value) private returns (bool) {
    return _target.call{_value: _value.toString()}("");
  }
}
contract DetailedReturnForContract {
  address payable public toAddress;
  function doSomething() public payable returns (uint) {
    toAddress = payable(msg.sender);
    return toAddress.call{value: msg.value}("");
  }
}
