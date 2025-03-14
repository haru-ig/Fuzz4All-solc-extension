pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrect {
    function add1(uint a)
        public pure
        returns(uint)
    {
        uint b = a + 1;
        uint c = a + b;
        c -= c * 7 / 8 + 1;
        b += b + 7 + a + 756 / a + uint(uint(uint(-1000000000) - uint(-1000000007)) * uint(uint(-1000000000)) == uint(-1000000000));
        b -= 7 - b + (7 * a) + (2 * (~a));
        return b;
    }
}
