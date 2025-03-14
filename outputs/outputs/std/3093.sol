pragma solidity ^0.8.0;
contract MyAddressableContract {
  address payable addr;
  string name;
  constructor() {
    addr = payable(msg.sender);
    name = "";
  }
  function changeAddress(address payable newAddr) public {
    addr = newAddr;
  }
  function changeName(string memory newName) public{
    name = newName;
  }
  function printName() public view {

    msg.sender.transfer(address(this).balance);
  }
}
