pragma solidity ^0.8.0;
contract Caller4 {
  address payable receiver;
  struct CallData {
    uint amount;
    address to;
  }
  uint value = 1000 ether;

  function pay() public payable returns (address payable) {
    receiver.transfer(value);
    return receiver;
  }
}


pragma solidity ^0.8.0;
contract Caller6 {
  address payable receiver;
  function pay() public payable returns (address payable) {
    receiver.transfer(address(this).balance);
    return address(this);
  }
}


pragma solidity ^0.8.0;
contract Caller7 {
  address payable receiver;
  function pay() public payable returns (address payable) {
    receiver.transfer(this.balance);
    return receiver;
  }
}


pragma solidity ^0.8.0;
contract Caller8 {
  address payable receiver;
  function pay() public payable returns (address payable) {
    receiver.transfer(address(this).balance);
    return this;
  }
}
