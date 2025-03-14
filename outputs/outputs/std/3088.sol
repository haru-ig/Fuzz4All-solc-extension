pragma solidity ^0.8.0;
contract MyAddressableContract {
  address payable addr;
  constructor() {
    addr = payable(msg.sender);
  }
  function changeAddress() public {
    addr = payable(msg.sender);
  }
}
