pragma solidity ^0.8.0;
contract C {
    mapping (uint256 => uint256) a;
    constructor (mapping(uint256 => uint256) memory map) public {
      a[23] = 2;
      a[11] = 1;
      a[1] = 3;
      a[7] = 6;
    }
}
