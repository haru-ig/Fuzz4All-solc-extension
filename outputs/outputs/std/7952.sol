pragma solidity ^0.8.0;
contract Convert_sol{
    string f;
    string g;
    function convertToHex(uint x) pure internal returns (uint) {
      if (x == 0) {

        return 0;
      } else if (x == maxUint || x == 256) {
        return 0xff;
      } else {

        uint256 x32 = uint256(x) * 4 + 3;
        uint i = 0xfffffffu;
        uint y;


        while (uint(uint256(x32 * (i / (2 ** 32 - 1))) * (i / (2 ** 32 - 1))) > x32 - x && i > 0u) {
          i = i >> 3;
        }

        uint256 x32_roundedToZero = uint256(x32) * 256u**i;



        uint256 x8 = x32_roundedToZero / 100;

        if (uint(x32_roundedToZero) % 128!= 0) {
          x8 += 1;
        }

        uint8 i8 = uint8(x8);
        uint8 msb = (i8 % 0x10) * 0x40 + (i8 % 0x4)[24];
        uint16 v;


        uint8 mask = 0xf;
        i8 = i8 / 0x10;
        v = v | (i8 << 4);
        i8 = i8 % 10;


        i8 = (254 - uint8(i8)) % 10;
        v = v | (i8 << 8);
        msb += uint16(i8) * 4;


        uint16 i16 = (uint16(msb) * 5) * 16 + 5;
        v = v | (i16 >> 6);
