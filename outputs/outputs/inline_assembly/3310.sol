pragma solidity ^0.8.0;
contract SemanticallyEquivalent2 {
  uint constant FACTOR1 = 1e10;
  uint constant FACTOR2 = 1e7;
  uint constant FACTOR3 = 1e42;
  uint32 public value1;
  uint32 public value2;
  address payable public _address1;
  address payable public _address2;
  constructor() {
    _address1 = payable(msg.sender);
    _address2 = payable(msg.sender);
    value1 = 1;
    value2 = 2;
  }
  function () external payable {
    uint32 inputValue1;
    uint32 inputValue2;
    assembly {
      inputValue1 := mload(add(input, 0x20))
      inputValue2 := mload(add(input, 0x24))
    }
    uint32 newValue1 = ((inputValue1 - inputValue2) / FACTOR2) * FACTOR1;
    uint32 newValue2 = ((inputValue1 + inputValue2) / FACTOR2) * FACTOR1;
    (inputValue1, inputValue2) = (newValue1, newValue2);
    uint32 inputValue3;
    uint32 inputValue4;
    assembly {
      inputValue3 := mload(add(new_addr, 0x20))
      inputValue4 := mload(add(new_addr, 0x24))
    }
    uint32 newValue3 = ((inputValue3 - inputValue4) / FACTOR2) * FACTOR1;
    uint32 newValue4 = ((inputValue3 + inputValue4) / FACTOR2) * FACTOR1;
    (inputValue3, inputValue4) = (newValue3, newValue4);
    uint32 newValue5 = ((inputValue1 * inputValue1 * inputValue1) / inputValue2) * inputValue3;
    uint32 newValue6  = ((inputValue3 + inputValue1 * inputValue4) / inputValue2) * inputValue4;
    newValue5 += FACTOR3;
    newValue6 += FACTOR3;
    newValue1 = newValue5 / FACTOR1;
    newValue2 = newValue6 / FACTOR1;
    uint32 newaddress1 = newValue1 % FACTOR1;
    uint32 newaddress2 = newValue2 % FACTOR1;
    (inputValue2,,newaddress1,,newaddress2,,,newaddress1+newaddress2)
    (_
