pragma solidity ^0.8.0;
contract SemanticCheckSemanticsV3 {
    function add1(uint a)
        public pure
        returns(uint)
    {
        uint b = 1+a;
        uint c = a^2+1;
        return a + b + 100 - c + 5000000000^(uint(a + 100) + (1 << 112) + (5 + a));
    }

    function add2(uint a)
        public pure
        returns(uint)
    {
        return a^uint(-1) & (a + 1 - 5u) + (50 - uint(a)) + a / 2;
    }
}
