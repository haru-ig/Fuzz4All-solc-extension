pragma solidity ^0.8.0;
contract SenderExample {
  address payable public addressOne;
  address payable public addressTwo;

  constructor() {
    addressOne = payable(new CallerFallback());
  }
  constructor(address payable _addressOne, address payable _addressTwo) {
    addressOne = payable(_addressOne);
    addressTwo = payable(_addressTwo);
  }
  function printAddress(address addr) public {
    if (msg.value == 0) {
      addressOne;
    } else {
      addressTwo;
    }
  }
}
