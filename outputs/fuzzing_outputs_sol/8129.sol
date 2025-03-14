pragma solidity ^0.8.0;
contract SemanticsEquivalent
{
  uint8[] array = new uint8[](10);
  uint8 d;
  uint16 f;
  uint8 e;
  uint16 g;
  uint8 c;
  uint8 b;
  uint16 a;
  event Received(uint8, uint16, uint8, uint16, uint8, uint16);
  event ReceivedNonPayable(uint8, uint8, uint16, uint8, uint16);
  constructor()
  {
    for(uint8 i=0;i< array.length;i++)
      array[i]=a;
    uint8 x;
    uint16 y;
    uint8 z;
    uint16 w;
    x=150;
    y=38;
    z=13;
    w=17;
    emit Received(a,a,z,z,z,x);
    emit Received(a,a,z,z,z,y);
    emit ReceivedNonPayable(a,a,z,a,x);
    emit ReceivedNonPayable(a,a,z,z,z);
    emit ReceivedNonPayable(a,a,x,z,z);
    emit ReceivedNonPayable(a,a,z,z,x);
  }
}
