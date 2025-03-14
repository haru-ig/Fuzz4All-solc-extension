pragma solidity ^0.8.0;
contract Convert {
  string public value;
  function convert(string memory s) public returns (uint8) {
    uint8 x;
    assembly {


      assert((mload(add(s, 0x20)) lt mload(0xfffffff000000000))
           == mload(add(s, 0x1f8000000000000)))

      value := bswap(add(s, 0x1f000000000000)))

      x := bswap(add(value, 0x1f000000000000)))
    }
    return x;
  }
}
