pragma solidity ^0.8.0;
contract Convert{
    function StringToSByte(string memory text) public pure returns (bytes memory) {
      bytes1 c;
      bytes memory mem = new bytes(text.length);
      for (uint j = 0; j < text.length; j++) {
      uint index = uint(uint8(text[j]).value);
      c = byte(index);
      mem[j] = c;
      }
      return mem;
    }
    function ByteToString(bytes memory text) public pure returns (string memory) {
        bytes1 b;
        bytes memory mem = new bytes(text.length);
        for (uint x = 0; x < mem.length; x++) {
          b = bytes1(text[x]);
          uint index = uint(uint8(b).value);
          mem[x] = byte(index);
        }
        return string(mem);
    }
    function Add(uint x1,uint x2) public pure returns(uint) {
        return x1 + x2;
    }

    function Add2(uint[2] memory x) public pure returns(uint) {
        uint sum = x[0];
    sum = sum + x[1];
        return sum;
    }
    function TestZero(uint x) public pure returns(bool) {
        return (x == 0);
    }
}
