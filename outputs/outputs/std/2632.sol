pragma solidity ^0.8.0;
contract Mutate {
  uint8 internal a = 0x0A;
  function mutationfunc() public {

    a = uint8(uint16(a) ^ uint256(uint32(a)));
  }
}
