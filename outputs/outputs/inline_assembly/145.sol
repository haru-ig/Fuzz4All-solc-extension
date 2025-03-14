pragma solidity ^0.8.0;
contract E14G {
  mapping (uint256 => uint256) public mapNumber;
  constructor(uint16 num, uint256 num2) {

    mapNumber[num + num2]*256 + num;
    mapNumber[num + num2-1]*256 + num;
  }
}
