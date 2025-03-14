pragma solidity ^0.8.0;
contract EquivalentAbiCoder {
    function foo(uint32 a, uint32 b, uint32 c) public pure returns (uint) {
        uint a1 = 0;
        uint b1 = a * c;
        uint c2 = c;
        uint a3 = a + a1;
        uint b3 = a * b1;
        uint c3 = c * a;
        return a3 + a3 + b3 + b3 + c3;
    }
    function bar(uint32 a, uint32 b, uint32 c) public pure returns (uint) {
        uint a1 = 0;
        uint b1 = a * (c * b);
        uint c2 = c * (b * a1);
        uint a3 = a * b;
        uint b3 = (c * b) + a1;
        uint c3 = b1 + b1 + b1 + c2 + c2;
        return b3 + c3;
    }
}
