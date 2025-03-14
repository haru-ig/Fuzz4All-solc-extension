pragma solidity ^0.8.0;
contract MutatedAbiCoder {
    function foo(uint32 a, uint32 b, uint32[3] memory c) public pure returns (uint) {
        return a + b * c[1];
    }
    function bar(uint32 a, uint32 b, uint32 c) public pure returns (uint) {
        return a + b * c;
    }
}
