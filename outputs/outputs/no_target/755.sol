pragma solidity ^0.8.0;
contract SemanticCheckSemanticsConciseArithmetic {
    function add2(uint a)
        public view
        returns (uint)
    {
        uint b = a + 1;
        uint c = a + b;
        return c - 100 + a - (100 + 10);
    }
}
