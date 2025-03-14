pragma solidity ^0.8.0;
 contract AddressMutability{
  Address payable public _address;
  constructor() {
    address payable selfAddress = payable(msg.sender);
    _address = selfAddress;
  }
}
contract CallMutability {
   uint _total;
   uint public value1;
   uint public value2;
  bool public flag = true;
   address payable public _address;
  constructor() {
     _address = payable(msg.sender);
     value1 = 1;
     value2 = 2;
  }
}
 contract CallMutability {
   uint _total;
   uint public value1;
   uint public value2;
  bool public flag = true;

  constructor() payable public {
     _address = payable(msg.sender);
     value1 = 1;
     value2 = 2;
  }
}
