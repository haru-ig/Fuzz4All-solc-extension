pragma solidity ^0.8.0;
contract Caller {
  uint256 public storageValue {get;}
  uint256 public EtherValue;
  constructor() {
    storageValue /= 2;
    EtherValue /= 2;
  }
  function set() public returns(address) {
    emit NewValue(storageValue > 10? storageValue : 1);
    return address(new WriteStorage());
  }

  function sendEther() public payable returns(uint256) {
    return EtherValue;
  }
  event NewValue(uint256);

  fallback() external payable {
    EtherValue += msg.value;
    emit NewValue(EtherValue);
  }
}
