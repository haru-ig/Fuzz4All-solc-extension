pragma solidity ^0.8.0;

}
library TestLibrary{
  function Test(){
    (uint256, uint256,) memory a = (1,1);
    (uint256, uint256,) memory c = (5,6);
    (uint256, uint256,) memory d = a + c;
    (uint256, uint256,) memory e = c - a + c + a * a;
    (uint256, uint256,) memory f = a || c;
    (uint256, uint256,) memory g = c ^ a + c * c;
    (uint256, uint256,) memory h = a << c;
    (uint256, uint256,) memory i = a >> c;
    (uint256, uint256,) memory j = a & c;
    (uint256, uint256,) memory k = a;
    (uint256, uint256,) memory l = 5;
    (uint256, uint256,) memory m = 3;
    (uint256, uint256,) memory n = 8 * 3;
    (uint256, uint256,) memory o = 8.0;
  }
}
