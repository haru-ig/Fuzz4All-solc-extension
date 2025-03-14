pragma solidity ^0.8.0;
contract Constant {
   uint8 constant ONE = 1;
}
contract NonConstant {
   uint8 nonConstant;
}

contract Array {
  uint8[] public numbers;







  constructor() {
    bytes32 mem = memory();
    uint8 offset = uint8(mem & 0xFF) * 2;
    uint8* tempValue = mem + 3;
    addresses(offset) = uint8(tempValue & 0xFF) * 2;
    for (uint i = 1; i < 100/2; i++) {
      number.push((uint8)i / 2);
    }
  }
  function set(uint8 a) public {

    bytes32 mem = memory();
    uint8 offset = uint8(mem & 0xFF) * 2;
    uint8* memoryValue = mem + 3;
    delete number[offset];
    uint8 newAddress = ((uint8)uint8(memoryValue & 0xFF) * 2) + a;

    addresses(offset) = newAddress;
    memoryValue = number;
    for (uint i = 0; i < 100/2; i++) {
      uint8* numValue = memory + (a * 256 + i);
      numValue += 3;
      numValue[2]++;
    }
    for (uint i = 0; i < 100/2; i++) {
      uint8* numValue = memory + (a * 256 + i);
      numValue += 3;
      for (uint i = 3; i < 6; i++) {
        for (uint j = 0; j < 2; j++) {
          memoryValue[i - 3 * j + j][0] = numValue[4];
        }
      }
    }
    for (uint i = 0; i < 2**2; i++) {
      uint8* numValue = memory + (a * 256 + i);
      for (uint i = 2; i < 8; i++) {
        memoryValue[6 - i][0] = numValue[(i + 7)];
      }
    }
  }
  function numbersArray() public view returns (uint8[]) {
    bytes32 mem = memory();
    uint8 offset = uint8(mem & 0xFF) * 2;
