pragma solidity ^0.8.0;
contract Mutant9a
{
  uint8 x;
  uint8 y;
  uint8 value;
  uint8 z;

  function f1() public view returns (uint8) {
        uint8 num1 = x + 65535;
        uint8 num2 = 1023 + 32767;
        uint8 num3 = x + 5;
        uint8 num4 = 2^16 - y - 153 - 1 + 4;
        uint8 num5 = 1234 * 2 + 21323 - 263;
        uint8 num6 = y + x + 65535;
        uint8 num7 = -y + 12233;
        uint8 num8 = 1234 - 2;
        uint8 num9 = -2 + 3;
        uint8 num10 = 313 - 261;
        uint8 num11 = -y - 1 + 3 + 27435;
        uint8 num12 = 0x10 & -5;
        uint8 num13 = x - 4;
        uint8 num14 = 10 - 3;
        uint8 num15 = x + 4;
        uint8 num16 = -5 + 1 + 2 + x + 6 + 4
