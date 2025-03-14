pragma solidity ^0.8.0;
contract Array_equivalent_64_modified {
   uint[] public x = new uint[](10);
   function f1(uint y) public pure returns (uint) {return ((x[y % 10]) + y);}
   function f2(uint x) public pure returns (uint) {return ((x.length + 16) + x);}
   function f3(uint k) public view returns (uint) {return x[10 * k / 16] < 0? x[10 * k/8] * ((2**15)-1): x[10 * k / 8];}
   function f4(uint o1, uint o2, uint o3, uint o4, uint o5, uint o6) public pure returns (uint) {return x[5 * o1 / 16] < 0? x[(o1 << 1) / 16] * (16**(256-o2)): (2**31) - x[16 * o1/8] * (16**(127-o3));}
}
