pragma solidity ^0.8.0;
contract MutatingFallback6 is MutatingFallback5 {
  constructor () {




    num2--;
    num1++;
    token = address(0xDEADBEEF);
  }
}
