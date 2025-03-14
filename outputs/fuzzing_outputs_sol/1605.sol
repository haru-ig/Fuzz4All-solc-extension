pragma solidity ^0.8.0;
contract Beneficiary {
  constructor(address payable receiver) {
    receiver.transfer(address(this).balance);
  }
}
contract Recipient {
  address payable public receiver;
  uint public amount;
  constructor() {
    receiver = payable(0xE0b609c2D03f2d48F090D5b786F9B5a4712e3688);
    amount = 10000;
  }
  fallback() external payable {
    receiver.transfer(amount);
  }
}
