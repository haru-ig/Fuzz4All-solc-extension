pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImperfectArithmetic {
    function add2(uint a)
        public pure
        returns (uint)
    {
        uint b = a + 1;
        uint c = a + b;
        return c - 100 + a - (100 + 10);
    }
}
