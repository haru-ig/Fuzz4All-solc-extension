pragma solidity ^0.8.0;
contract SemanticEquivalent
{
  uint8 public a;
  uint8 public b;
  uint16 public c;
  uint8 public d;
  uint16 public e;
  event ReceivedPayable(uint8, uint8, uint16, uint8, uint16, uint16);
  modifier neverCalled()
  {
    emit ReceivedPayable(a,b,c,d,e,a);
  }
  modifier called{
    emit ReceivedPayable(a,a,c,a,c,a);
    emit ReceivedPayable(a,b,a,b,b,e);
    emit ReceivedPayable(a,b,b,b,e,b);
  }
  modifier zero(uint e)
  {
    emit ReceivedPayable(a,b,c,d,e,e);
  }
  function nonsemanticEquivalent()
  only_semantically_identical neverCalled public
  {
     emit ReceivedPayable(a,a,c,a,c,a);
     emit ReceivedPayable(a,b,a,b,b,e);
     emit ReceivedPayable(a,b,b,b,e,b);
  }

  constructor()
  {
          a = 60;
          b = 60;
          c = 0;
          d = 1;
          e = 3;
  }
}
