pragma solidity ^0.8.0;
contract B {
    uint128 constant _int128 = 9 * 1e10;
    function mutatedBy(uint) public pure returns (uint) {
      uint i = uint(uint(_int128) * 16); return (uint(i - (uint(_int128) * 10) ** 32) * 16) * 32;
    }
}


contract InlineAssemblyExample is A, B {
  uint immutable _zero10 = 10;
  uint128 immutable _zero28 = 28;
  uint8 immutable _zero8 = 8;
  uint256 immutable _zero256 = 256;

  function test() public pure {





      bytes memory buf = new bytes(8);
      assembly {







          mstore(buf, 0x14, 0x34, 0x1a, 0x3a)



          mload(buf, 0x2)
          mload(buf, 0x4)
          mload(buf, 0x8)
          mload(buf, 0xc)
