pragma solidity ^0.8.0;
contract Test52Mutant {
   uint[6] m;
   function f() public{
      uint _m;
      _m = m[5]+3;
      m[5]=456;
      _m = m[4]+3;
      m[4]=567;
      _m = m[10]+3;
      m[10]=345;
   }
}

pragma solidity ^0.8.0;
contract Test52Mutant {
   address[] m;
   function f() public{
      address _m;
      _m = m[4];
      m[4]=0x1234;
      _m = m[5];
      m[5]=0x4567;
   }
}
