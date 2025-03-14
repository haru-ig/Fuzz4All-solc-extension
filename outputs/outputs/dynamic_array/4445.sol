pragma solidity ^0.8.0;
contract Mutated5 { function test2() public returns (bytes32[][][] memory) {
byte[] memory a = new byte[](79); a[17] = '0'; a[33] = '6'; a[34] = '6'; a[5891] = '8'; a[596093] = '1';
 byte[][][] memory b = new byte[2][]; b[2] = new byte[1][]; b[1][0] = a;
} }
