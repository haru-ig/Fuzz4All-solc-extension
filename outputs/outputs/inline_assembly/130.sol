pragma solidity ^0.8.0;
contract E4 {
  uint8 a;
  constructor(uint8 x) {
    assembly {

      let b := mload(72)

      mstore(b,0,add(x,0x20))
    }
  }
}
