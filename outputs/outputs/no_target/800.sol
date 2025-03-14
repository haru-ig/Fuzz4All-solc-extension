pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrectMutate {
    function add(uint a, uint b)
        public pure
        returns (uint)
    {
        uint result;
        assembly {
            result := add(a, b)
        }
        assembly { result := add(add(a, b), result) }
        return result;
    }
}
