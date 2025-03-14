pragma solidity ^0.8.0;
contract Bitfield{
   bytes32 _a;
   bytes32 _b;
   uint64 _a2;
   uint64 _b2;
   uint8 _a8;
   uint8 _b8;
   uint8 _byte;
   bytes32 _ab;
   function bitfieldfunc() public {
      _a2 = 1 << 12;
      _b2 = 2;
      _a8 = _a2;
      _b8 = 10;
      _byte = _b8;
      _ab = bytes32(_a2);
   }
}
