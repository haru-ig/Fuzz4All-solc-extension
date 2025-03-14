pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImperfectArithmeticV4 {

    function add3(uint a)
        public pure
        returns(uint)
    {
        uint b = a + 1;
        uint c = a + b;
        c = uint(c - 100) + a -uint (100 + 10);
        return c;
    }
}
