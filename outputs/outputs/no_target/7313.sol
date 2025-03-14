pragma solidity ^0.8.0;
contract MutatedAbiCoder {
    function foo(uint32 a, uint32 b, uint32 c) public pure returns (uint x) {
        x = uint(a) + b;
        x = b * c + x;
    }
    function bar(uint32 a, uint32 b, uint32 c) public pure returns (uint x) {
        x = uint(a) + b;
        x += c * b;
        x = b * x + x;
    }
}
