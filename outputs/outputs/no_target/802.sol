pragma solidity ^0.8.0;
contract SemanticCheckMutatedSemanticsCorrect {
    uint[7] m;
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
contract SemanticCheckMutatedSemanticsIncorrectRevert {
    uint[7] m;
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
contract SemanticCheckMutatedSemanticsCorrectRevert {
    uint[7] m;
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


pragma solidity ^0.8.0;
contract SemanticCheckMutatedSemanticsCorrect {
    uint[9] m;
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
contract SemanticCheckMutatedSemanticsIncorrectRevert {
    uint[9] m;
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
contract SemanticCheckMutatedSemanticsCorrectRevert {
    uint[9] m;
    function add(uint a, uint256 b)
        public pure
        returns(uint256)
    {
        uint256 result;
        uint overflowException;
        assembly {
            result := add(a, b)
            switch result
            case 0 {
                mstore(m,0)
            default {
                mstore(m,result)
            }
        }
        if (result > 0) {
            return -1;
        } else {
            return result;
        }
    }
}
