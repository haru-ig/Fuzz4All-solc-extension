pragma solidity ^0.8.0;
contract SemanticCheckSemanticsIncorrect {
    function add3(uint a)
        public pure
        returns(uint)
    {
        uint b = a + 1;
        uint c = a + b;
        b = uint(c - 180) + a -uint (100 + 10);
        return b;
    }
}
