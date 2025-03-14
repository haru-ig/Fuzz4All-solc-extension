pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrect {
    function add3(uint a)
        public pure
        returns(uint)
        unchecked
    {
        return a + 1;
    }

}
