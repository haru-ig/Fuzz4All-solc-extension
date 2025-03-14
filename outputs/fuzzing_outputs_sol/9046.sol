pragma solidity ^0.8.0;
contract GoodContract {

  uint gasCap = 200000000000;

  address private contractAddr = msg.sender;
  mapping(address => uint) myMap;

  constructor(uint a) {
    myMap[msg.sender] = a;
    uint myvalue = myMap[msg.sender];
    if (myvalue == 0) {
      contractAddr.call{value: a}("");
    }
  }

  fallback() external payable {
    uint transferValue = address(this).balance;
    if (transferValue > gasCap) {
      contractAddr.call{value: transferValue}("");
    }
  }

  receive() external payable {
    uint storedValue = myMap[msg.sender];
    if (storedValue == 0) {

      myMap[msg.sender] = address(this).balance;
      uint myvalue = myMap[msg.sender];
      if (myvalue == 0) {
        contractAddr.call{value: address(this).balance}("");
      }
    }
  }
}
