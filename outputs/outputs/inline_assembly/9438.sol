pragma solidity ^0.8.0;
contract M {
  uint constant value = 5;
  uint  counter;
  fallback() external payable {
    uint gasCost = address(this).call{value: address(M(msg.sender)).value};
    counter += value;
    counter --;
  }
}
