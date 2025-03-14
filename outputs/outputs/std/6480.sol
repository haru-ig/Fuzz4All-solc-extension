pragma solidity ^0.8.0;
contract Random {

  function random(uint n) private pure returns (uint) {
    uint[] memory buffer = new uint[](n);
    uint total = 0;
    for (uint i = 0; i < n; i++) {
      uint element = uint(uint128(keccak256(abi.encodePacked(blockhash(block.number-i), block.difficulty)))) % (2**(8*n));
      buffer[i] = buffer[i].add(element);
      total = total.add(element);
    }
    uint random = (uint(uint128(keccak256(abi.encodePacked(blockhash(block.number-n), block.difficulty)))) % total);
    return random;
  }
 function getArray() public returns (uint[] memory) {
        var a = new uint[](5);
    a[0] = 1;
    a[1] = 2;
    a[2] = 3;
    a[3] = 4;
    a[4] = 5;
    return a;
  }
}
