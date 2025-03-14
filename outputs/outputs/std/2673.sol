pragma solidity ^0.8.0;
import './Bitfield.sol';
contract ArrayWithBitfields{
   Bitfield.bitfieldfunc() ;
   function func(uint x) public view returns (uint) {
      uint y = uint(bitwiseAnd(x, _bitmask));
      return y;
   }
   function func1(uint x) public pure returns (bool) {
      bool y = bool(bitwiseAnd(x, _bitmask));
      return y;
   }
   function func2(uint x) public view returns (uint8) {
      uint8 y = uint8(bitwiseAnd(x, _bitmask));
      return y;
   }
   function func3(uint x) public pure returns (uint8) {
      uint8 y = uint8(bitwiseOr(x, _bitmask));
      return y;
   }
   function func4(uint x) public view returns (uint8) {
      uint8 y = uint8(bitwiseXor(x, _bitmask));
      return y;
   }
   function func5(uint x) public pure returns (uint8) {
      uint8 y = uint8(bitwiseNot(x));
      return y;
   }
}

pragma solidity ^0.8.0;
contract Test {
   Array.Convert.strtoint("5", 10) ;
   Array.Convert.strtoint("-24", 10) ;
   uint[] memory array ;
   uint[4] a ;

   function test() public returns (uint) {
      uint y;
      uint[] memory b;
      uint8[] memory c ;
      b = new uint[](4);
      b[0] = 1;
      y = Array.Convert.inttostr(Int.convert.x, 10);
      return y;
   }
}
