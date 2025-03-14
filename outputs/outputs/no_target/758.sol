pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrectArithmetic {
    function add1(uint a)
        public
        pure
        returns (uint)
    {
        uint b = a + 1;
        uint c = a + b;
        uint d = c - 1;
        return d + a + (100 + 10) - 300;
    }
}

pragma solidity ^0.8.0;
contract SemanticCheckSemanticsIncorrectArithmetic {
    function add2(uint a)
        public
        pure
        returns (uint)
    {
        uint b = 1;
        uint c = a + b;
        uint d = c - 1;
        return d + a - (b - (100 + 10) + 300);
    }
}
