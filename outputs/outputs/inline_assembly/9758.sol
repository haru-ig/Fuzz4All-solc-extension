pragma solidity ^0.8.0;
contract MixedYulContract2 {
    uint internal contractCounter;
    uint constant c = 0x01;
    uint constant d = 0x06;
    function addSum(uint z) public pure returns (uint) {
      if (z >= 0x40) {
        return  z;
      }
      if (z >= 0x40) {
        return d;
      }
      if (z >= 0x3f) {
          return ((2 + c) * z) / 2 + c + d;
      }
      return 1 + (z / 2) * 2 * c + d;
    }
}

function Main() {
  uint value1 = 3;
  uint value2 = 8 / 16;
  uint result = 1 + value1;
  result += (result * 4) / 2;
  uint value3 = value1* value2 + 10;


  uint z = MutatedYulContract3.multiply(value2);

  uint result2 = MixedYulContract2.addSum(2);
  uint result3 = MixedYulContract2.addSum(0x3f);
  uint result4 = MixedYulContract2.addSum(value3);
  uint result5 = MixedYulContract2.addSum(2*z);
  uint result6 = MixedYulContract2.addSum(value2*value1);
  uint x;
  uint y;
  uint z4 = getFirstZ(z);
}
function z4() returns (uint) { return 4; }
function getFirstZ(uint _z) returns (uint) {
    uint y;
    uint z;
    if (z == 5) {
        _z;
        _z;
    }
    uint a;
}
/* Some notes on inline assembly
There are two types of inline assembly statements:
- The 16 bit (lower) form (start with " assembly"):
    It requires two bytes, the low byte is the opcode, and the high byte is the operands.
    The operands in the high byte are taken from the left and can also be referred to as source registers.
- The 32 bit (higher) form (start with " \u{16}"):
    Used to store 16 bits as individual bytes. They are taken from the left and can also be referred to
