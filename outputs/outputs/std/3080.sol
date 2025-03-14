pragma solidity ^0.8.0;
contract MyAddressableContract {
  mapping(uint256 => address payable) payable myAddr;
  uint256 x;
  constructor() {
    x = msg.value;
    myAddr[1] = payable(msg.sender);
    myAddr[2] = payable(msg.sender);
  }
  function getAddr() public view returns(address payable) {
    return myAddr[x];
  }
  function updateAddr() public {
    myAddr[2] = payable(msg.sender);
  }
}
