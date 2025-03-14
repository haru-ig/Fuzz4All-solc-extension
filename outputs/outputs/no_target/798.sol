pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrect {
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        unchecked {
            result := add(a, 1)
        }
        return result;
    }
}

pragma solidity 0.8.0;
contract SemanticCheckSemanticsIncorrect{
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

pragma solidity ^0.8.0;
contract SemanticCheckSemanticsCorrect{
    function add4(uint a)
        public pure
        returns(uint)
    {
        uint result;
        unchecked {
            result := add(a, 1)
        }
        return result;
    }
}
