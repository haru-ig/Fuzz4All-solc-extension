pragma solidity ^0.8.0;
contract EquivalentAbiCoder {
    function foo(uint32 a, uint32 b, uint32[3] memory c) public pure returns (uint) {
        if (isEquivalence())
            return a + b * c[1];
        else
            return a + b * c;
    }
    function bar(uint32 a, uint32 b, uint32 c) public pure returns (uint) {
        if (isEquivalence())
            return a + b * c[1];
    }
    function isEquivalence() internal pure returns (bool) {
        return true;
    }
}
