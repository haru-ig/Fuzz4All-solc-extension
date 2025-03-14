pragma solidity ^0.8.0;
contract mutatedB {
  uint256 a = 0xAB23E7DBB74924794A79395FE803B8FE1BF78335;
  function f(uint8 a) public {
    uint256 b;
    uint256 c = 1/(a+2);
    b = (1/(a+2))-1;
    b = (b + b)+2;
    b = b;
    b = b+2;
    uint256 d = b-1;
    uint256 e = b+d;
    uint256 f = c+b;
  }
}
