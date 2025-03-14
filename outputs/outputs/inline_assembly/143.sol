pragma solidity ^0.8.0;
contract E4G {
  mapping (uint256 => uint256) public mapNumber;
  constructor(uint16 num, uint16 num2) {
    mapNumber[num] = num2*256 +num;
  }
}
