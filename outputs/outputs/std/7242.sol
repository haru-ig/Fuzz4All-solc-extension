pragma solidity ^0.8.0;
contract Convert {
  function test(string memory) public pure {
    string memory myString = "This is a string";
    uint256 x = 1234;
    uint256 y = 1234;
    uint z = 2 * x;
    uint myUintArray[10];
    uint myUintArray2[] = new uint[](3);
    uint[] memory x3 = new uint[](3);
    bytes32 myBytes32 = hex"80a0b0c0";
    bytes32 myBytes32Array[9];
    bytes32[] memory y3 = new bytes32[](3);
    bytes32 myBytes32Array2 = hex"7f00";
    bytes y4 = hex"0x00000000000000000000000000000000000000000000000000000000010";
  }
}
