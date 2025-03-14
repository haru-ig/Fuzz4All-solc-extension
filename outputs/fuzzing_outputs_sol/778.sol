pragma solidity ^0.8.0;
contract GasExceedingCallerExample {
  bool flag = false;
  address payable[10];
  function modify() public {
    for (uint256 i = 0; i < 10; i++) {
      if (flag) {
        payable[i].call{value: Ether(150)}("");
        flag = false;
      }
    }
  }
}
