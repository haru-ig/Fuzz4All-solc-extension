pragma solidity ^0.8.0;
contract C5_19_3 {
   uint _x;
   constructor(uint x) { _x = x; }
}
contract C5_19_4 {
}
contract C5_19_7 {
   uint _x;
   uint _a1;
   uint _a2;
   mapping(uint => uint) _mappingA;
   uint _b;
   constructor(uint x) {
      _a2 = x;
      _x = x;
   }
   function f() view public returns (uint) {
      return _b;
   }
   function g() public view returns (uint) {
      return _x;
   }
   function h() public view returns (uint) {
      return _mappingA[0] + _mappingA[1];
   }
   function i() public view returns (uint) {
      return _mappingA[0] * _mappingA[1];
   }
}
contract C5_19_6 {
}
