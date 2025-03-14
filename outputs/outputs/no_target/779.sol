pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImperfectArithmeticV3 {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint b = a + 1;
        uint c = a + b;
        c = uint8(c - 100) + a -uint (100 + 10);
        return c;
    }
