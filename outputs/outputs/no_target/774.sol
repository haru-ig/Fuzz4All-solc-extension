pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImperfectArithmeticV3 {
    function add3(uint a)
        public pure
        returns(uint x)
    {
        x = a + 1;
        x = uint(x - 100) + a - address(this);
    }
}

contract SemanticCheckSemanticsImperfectArithmeticV2 {
    function add2(uint a)
        public pure
    {
        uint b = a + 1;
        uint c = a + b;
        c = uint(c - 100) + a - uint (100 + 10);
    }
}

contract SemanticCheckSemanticsImperfectArithmeticV1 {
    function add1(uint a)
        public pure
    {
        uint b = a + 1;
        uint c = a + b;
        c = uint(c - 100) + a - uint (100 + 10);
        uint d = uint(c / 5);
    }
}
