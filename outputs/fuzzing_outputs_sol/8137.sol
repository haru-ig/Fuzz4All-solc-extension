pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  uint8 a;
  uint8 b;
  uint16 c;
  uint8 d;
  uint16 e;
  event ReceivedPayable(uint8, uint8, uint16, uint8, uint16, uint16);
  constructor(
    uint8 _a,uint8 _b,uint16 _c,
    uint8 _d,uint16 _e
  )
  {
    emit ReceivedPayable(_b,_e,_a,_d,_a,_d);
  }
}
