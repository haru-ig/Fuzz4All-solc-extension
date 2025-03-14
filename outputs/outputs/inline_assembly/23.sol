pragma solidity ^0.8.0;
contract A {
    uint16 internal _number;
    constructor() {
      assembly {
          calldatacopy(0x11, 0x20, 8)
          sstore(0x12)
      }
      _number = _number + uint8(_number);
    }
}
