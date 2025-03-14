pragma solidity ^0.8.0;


contract SemanticEquivalentK9_
{
  uint8 a;
  uint8 b;
  uint16 c;
  uint8 d;
  uint16 e;
  constructor(uint8 b)
  {
    emit ReceivedPayable(a,b,c,d,e,a);
    emit ReceivedPayable(a,a,d,a,d,a);
    emit ReceivedPayable(a,b,a,b,b,e);
    emit ReceivedPayable(a,b,b,b,e,b);
  }
}

pragma solidity ^0.8.0;
contract SemanticEquivalentK10_
{
  uint8 x;
  uint8 y;
  uint16 z;
  uint8 a;
  uint8 b;
  uint16 c;
  uint8 d;
  uint16 e;
  constructor()
  {
    uint8 k;
    uint8 l;
    uint16 m;
    uint8 n;
    uint16 o;
    emit ReceivedPayable(a,a,b,d,y,x);
    emit ReceivedPayable(a,b,a,b,b,e);
    uint256 k;
    uint256 l;
    emit ReceivedPayable(a,a,a,a,a,a);
  }
}
