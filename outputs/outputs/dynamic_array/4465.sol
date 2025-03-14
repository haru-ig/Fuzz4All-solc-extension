pragma solidity ^0.8.0;
contract MutatedPrevious { bytes32[][][][] memory a; function testPrevious() public returns (bytes32[][][][] memory) {
a[1][8] = a;
return a;
} }
