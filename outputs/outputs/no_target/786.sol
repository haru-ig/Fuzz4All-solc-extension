pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrect {
    function add3(uint a)
        public pure
        returns(uint)
    {
        uint b = a + 1;
        uint c = a + b;
        uint d = a + b + 1;
        return uint(c + d + 100) - uint(d - 112) / 100;
    }
}
