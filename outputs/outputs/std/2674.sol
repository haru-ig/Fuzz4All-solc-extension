pragma solidity ^0.8.0;
contract Bitfield1{
   uint256 _a;
   uint8 _bitfield;
   uint8 internal _bitfield8;
   uint8 _bitmask;
    function bitfieldfunc() public {
      _bitfield = 3;
      _bitfield8 = 7;
      _bitmask = 3;
      uint256 _r = _a & _b;
      _a = _b;
      _b = _r;
    }
}
