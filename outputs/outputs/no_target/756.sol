pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrectArithmetic {
    function add2(uint a)
        public pure
        returns (uint8)
    {
        uint b = a + 1;
        uint c = a + b;
        return c - 100 + a - (100 + 10);
    }
}
