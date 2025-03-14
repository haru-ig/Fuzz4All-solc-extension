pragma solidity ^0.8.0;
contract SemanticCheckSemanticsIncorrect {

    function add3(uint a)
        public pure
        returns(uint)
    {
        return a + 1;
    }
}
