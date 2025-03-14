pragma solidity ^0.8.0;
contract SemanticSame {
    function get(uint x, uint y, uint z) public virtual {
        uint x = x * z + y;
        get();
    }
}
contract HighLevelSame {
    function get(uint x, uint y, uint z) public virtual pure returns (uint) {
        uint x = x * z;
        x += y;
        return x;
    }
}
contract HighLevelDifferent {
    function get(uint x, uint y, uint z) public virtual pure returns (uint) {
        uint x = x * z + y;
        return x;
    }
}
