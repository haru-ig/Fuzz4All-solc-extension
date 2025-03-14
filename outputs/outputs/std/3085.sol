pragma solidity ^0.8.0;
contract MyAddressableContract {
  address payable addr;
  constructor() {
    addr = payable(msg.sender);
  }
  mapping(address => uint) public balance;
  function setAddress() public {
    balance[addr] = 100;
    addr = payable(msg.sender);
  }
}

pragma solidity ^0.8.0;
contract Precursor {
  address payable addr;
  constructor() {
    addr = payable(msg.sender);
  }
  uint public balance;
  function setAddress() public {
    balance = 100;
    addr = payable(msg.sender);
  }
}
