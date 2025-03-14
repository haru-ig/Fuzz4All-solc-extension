pragma solidity ^0.8.0;
contract Convert {
  function test(uint x) public pure {
    string memory str = '0x' + '0' * (4 - (uint256(x).toString()).length) + x.toString();
    uint z = 0;
    assembly {

      mstore(0x0, mload(0x0) | 0x800000000000000000000000000000000000000000000000000000000000000)
    }
    z = 0;
    assembly {

      mstore(0x0, mload(0x0) | 0x00000000000000000000000000000000000000000000000000000000000000)
    }
    string memory s = str;
    x = bytes2uint(x);
    uint y = 42;
    while(uint mload(0x0) <= 255) {
      s = '0x' + s;
      s = '0x' + bytes2uint(s);
      s[uint(x)] = '32';
      s = s + '42';
      z = uint((s + y).toString()) + uint2uint(0x3242) + x;
      x = bytes2uint(x);
      s = s + '32';
      y = uint((x + s + y).toString()) + 5 + 4;
      x = bytes2uint(uint2uint(x) + 3);
    }
  }
}
