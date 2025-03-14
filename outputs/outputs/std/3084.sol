pragma solidity ^0.8.0;
contract ModifiedPreviousGeneration {
  uint16 counter = 0;
  constructor() {
    counter |= uint16(0xFF00);
  }
  function modifier() public virtual {
    ++counter >> 16;
    if(counter == 0x1FF0) {
      counter = 0;
      addr = addr.cast();
      _;
    }
  }
}
