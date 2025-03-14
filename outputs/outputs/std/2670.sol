pragma solidity ^0.8.0;
contract StringBitfield{
   uint128 _a;
   uint32 _b;
   uint8 _c;
   uint8 internal _bitmask;
   bytes32 _string;
   constructor() {
      _string = 'contract';
   }
}
