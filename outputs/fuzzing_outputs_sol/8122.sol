pragma solidity ^0.8.0;
contract SemanticEquivalentK8_
{
  uint8 a;
  uint8 b;
  uint16 c;
  uint8 d;
  uint16 e;
  event ReceivedPayable(uint8, uint8, uint16, uint8, uint16, uint16);
  constructor()
  {
    emit ReceivedPayable(a,b,c,d,e,a);
    emit ReceivedPayable(a,a,c,a,c,a);
    emit ReceivedPayable(a,b,a,b,b,e);
    emit ReceivedPayable(a,b,b,b,e,b);
  }
}
