pragma solidity ^0.8.0;
contract MutateSemantic6Data1 {
    uint256 public data1;
    uint256 private data2;
    bytes private data3;
    uint8 internal data4;

    function test() public pure returns (bytes memory d) {
        d = bytes(uint(data1) + uint(data2));
    }
}
