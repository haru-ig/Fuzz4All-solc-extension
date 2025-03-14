pragma solidity ^0.8.0;
contract P32 {
  uint e = 0 < 1;
}
contract P33 {
  uint e = 1 <= 1;
}
contract P34 {
  uint e = 1 < 1;
}
contract P35 {
  uint e = 1 <= 1;
}
contract P36 {
  uint e = 1 < 1;
}
contract P37 {
  uint8 x = 1 + 1;
  uint8 z = 1 + 1;
  uint e = z + x;
}
contract P38 {
  uint8 x = 1 + 1;
  uint8 z = 1 + 1;
  uint e = z + 1;
}
contract P39 {
  uint256 a = 1 + 1;
  uint256 r = a + x;
}
contract P40 {
  uint256 a = 1 + 1;
  uint256 r = 1 + a;
}
contract P41 {
  uint256 a = 1 + 1;
  uint256 r = x + a;
}
contract P42 {
  uint256 a = 1 + 1;
  uint256 r = 1 + a;
}
contract P43 {
  uint256 a = 1 + 1;
  uint256 x = 1 + 1;
  uint x = x + 1;
  uint256 r = a + x;
}
contract P44 {
  uint256 a = 1 + 1;
}
