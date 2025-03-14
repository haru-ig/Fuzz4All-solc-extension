pragma solidity ^0.8.0;
contract F {
  uint[] public p;
  function f(uint n, uint m) public {
    uint[] memory x=new uint[](n);
    x[0]=6;
    uint[] memory y=new uint[](m);
    y[0]=7;
    p=x;
    p=y;
    p[1]=43*n;
  }
}
