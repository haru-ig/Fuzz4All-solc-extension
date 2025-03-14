pragma solidity ^0.8.0;
 contract SemanticEquivalentSolidityPointers3 {
  function SetArrays() public {
    uint[] memory a;
    a[2] = 1;
    uint[][] memory b;
    b[2] = new uint[1][3];
    Point memory c = Point(0xDEADdeaddeaddeaddeaddeaddeaddeaddead, 0xDEADC0DE);
    b[2][2] = new uint[](1)[3];
    b[2][2][0] = 1;
    b[2][2][1] = 0xCEFADEADDEADDEADDEAD;
    b[2][2][2] = 0xC0DEDEADDEADDEADDEAD;
    c = Line(0xDEADdeaddeaddeaddeaddeaddead, 0xCEFADEAD);
    b[2][2] = new Point[](1);
    b[2][2][0] = c;
  }
  function SetArraysModified() public {
    a = a.concat(1);
    uint[][] memory b;
    b = b.concat(new uint[1][3]);
    uint[] memory a = a.concat(1);
    Point[] memory b = b.concat(new Point(0xDEADdeaddeaddeaddeaddeaddeaddead, 0xDEADC0DE));
    uint[][] memory c;
    c= c.concat(new uint[1][3]);
    b = b.concat(new uint[](1)[3]);
  }
}
