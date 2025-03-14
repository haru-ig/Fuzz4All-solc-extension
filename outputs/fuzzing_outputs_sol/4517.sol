pragma solidity ^0.8.0;
contract SemanticDifference {
    function get(uint z) private {
        uint x = 1;
        uint y = 3;
        uint x1 = x * z;
        uint x2 = z;
        uint x3 = x * (z + y);
        get();
    }
    function get() private pure {
    }
    function set() public {
        uint x;
        uint y;
        uint x1 = x * x;
        uint x2 = x;
        uint x3 = x * x;
        x1 = x * x;
        x2 = x;
        x3 = x;
        x1 = x * x;
        x2 = x;
        x3 = x;
        x1 = x * x;
        x2 = x;
        x3 = x;
    }
}
