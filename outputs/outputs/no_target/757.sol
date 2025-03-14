pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImperfectArithmetic {
    function add3(uint a)
        public pure
        returns (uint)
    {
        uint b = a + 1;
        uint c = uint(a) + b;
        return c - 100 + uint(a) - uint(100) + uint(10 + 100);
    }
}
