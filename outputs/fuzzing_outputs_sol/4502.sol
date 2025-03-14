pragma solidity ^0.8.0;
contract SemanticDifferent {
    function get(uint z) public {
        uint x = 1;
        uint y = 3;
        x = y * z + y;
        get();
    }
    function get() public pure {
    }
}

pragma solidity ^0.8.0;
contract HighLevelSame {
    function get(uint x, uint y, uint z) public pure returns (uint) {
        uint x = x * z;
        x += y;
    }
}

pragma solidity ^0.8.0;
contract HighLevelDifferent {
    function get(uint x, uint y, uint z) public pure returns (uint) {
        uint x = x * z + y;
        return x;
    }
}
