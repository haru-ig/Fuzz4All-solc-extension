pragma solidity ^0.8.0;
contract MutatingFallback6 {
  uint16 internal num1;
  mapping(address => uint16) num2;
  uint8 internal num3;
  mapping(address => uint8) num4;
  address internal token;
  constructor(uint8 v) {
    num3 = v;
    num4[token] = 255;
    uint16 tempNum1 = num1 + num3 * 2;
    num2[token] = tempNum1 * 256;
  }
  function mutate() public onlyFallback {
    num1 = 352 * 3;
    num3 = 2;
    num4[token] = 159;
    uint16 tempNum1 = num1 + num4[token] * 2;
    num2[token] = tempNum1 * 256;
    emit Change(token, tempNum1 * num2[token], num4[token]);
  }
}
