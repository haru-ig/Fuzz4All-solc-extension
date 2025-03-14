pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrect {
    function add(uint a, uint b)
        public pure
        returns (uint)
    {
        uint result;
        assembly {
            result := add(a, b)
        }
        return result;
    }
}
contract SemanticCheckSemanticsIncorrectRevert {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        assembly {
            result := add(a, 1)
        }
        return result;
    }
}
contract SemanticCheckSemanticsCorrectRevert {
    function add(uint a, uint256 b)
        public pure
        returns(uint256)
    {
        uint256 result;
        assembly {
            result := add(a, b)
        }
        return result;
    }
}
