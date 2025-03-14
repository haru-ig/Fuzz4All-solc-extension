pragma solidity ^0.8.0;
contract SemanticCheckSemanticsImperfectArithmeticV2 {
    function add3(uint a)
        public pure
        returns(uint)
    {
        uint b = 1 + 2;
        uint c = a + b + 100 + 5;
        return b + a + c + a * a + (1 + (a + 2)) + uint(a);
    }
}

```
