pragma solidity ^0.8.0;
contract SemanticEquivalent1
{
  address _addressA;
  address _addressB;
  address _addressC;
  uint8 _a;
  uint8 _b;
  uint16 _c;
  uint8 _d;
  uint16 _e;
  event ReceivedContract();
  event ReceivedFallback();
  constructor()
  {
    _addressA = 0x0000000000000000000000000000000000000000;
    _addressB = payable(address(0));
    _addressC = 0x0000000000000000000000000000000000000000;
    _a = 0xFF;
    _b = 0xFF;
    _c = 0xFFFF;
    _d = 0xFF;
    _e = 0xFFFF;
    emit ReceivedContract();
  }
}
