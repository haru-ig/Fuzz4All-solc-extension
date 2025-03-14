pragma solidity ^0.8.0;
contract Bitfield{
   uint256 _a;
   uint8 _bitfield;
   uint8 internal _bitfield8;
   uint8 _bitmask;
   bool _boolean;
   string _string;
   function bitfieldfunc() public {
      _bitfield = 3;
      _bitfield8 = 7;
      _bitmask = 3;
      _boolean = true;
      _string = 'contract';
   }
}
