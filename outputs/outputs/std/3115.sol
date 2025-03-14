pragma solidity ^0.8.0;
contract Array {
  function f(uint[] memory a) public pure returns (uint) {
    for (uint i = 1; i < a.length; i++) {
      assert(a[i].gt(0));
    }
    return a[0];
  }
    function min(uint[] memory a) public pure returns(uint) {
    for (uint i = 0; i < a.length; i++) {
      assert(!a[i].eq(0));
    }
    return a[0];
  }
  function max(uint[] memory a) public pure returns(uint) {
    for (uint i = 0; i < a.length; i++) {
      assert(!a[i].eq(0));
    }
    return a[0];
  }
  function sum(uint[] memory a) public pure returns(uint) {
    for (uint i = 0; i < a.length; i++) {
      assert(!a[i].eq(0));
    }
    return a[0];
  }
  function setArrayWithRandom(uint[] memory a) public pure {
    uint[] memory x = getUnsignedRandomArray();
    uint num = a.length;
    while (num > 0) {
      uint rnd = getUnsignedRandom();
      if (x[rnd] > 0) {
        a[num - 1] = getSignedRandom(a[num - 1]);
      } else {
        a.length = num;
        assert(false);
      }
      num--;
    }
  }
  function getSignedRandom(uint min) public pure returns (uint) {
    return uint(keccak256(abi.encodePacked((uint160(-1), min))));
  }
  function getUnsignedRandom() public pure returns (uint) {
    uint x = uint(keccak256(abi.encodePacked((uint160(-1), block.timestamp))));
    if ((x % 978567) < 12354) {
      x += uint(keccak256(abi.encodePacked((x % 978567)))));
    }
    while (true) {
      uint y = uint(keccak256(abi.encodePacked((x % 496726), uint160(-1)))));
      if (y == 166405) {
        return x;
      } else {
        x = y;
      }
    }
  }
    function getUnsignedRandomArray() public pure returns (uint[]) {
      uint[] memory x = new uint[](1);
      uint a = getUnsignedRandom();
      uint b = a + uint(keccak256(abi.encodePacked((a / 978567)))));
      while (a > uint(keccak256(abi.encodePacked((b / 496726), uint16
