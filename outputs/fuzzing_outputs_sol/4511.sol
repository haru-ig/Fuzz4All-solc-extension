pragma solidity ^0.8.0;
contract SemanticDifferent {
    function get(uint z) public {
        uint x = 1;
        uint y = 3;
        uint x1 = x * z;
        uint x2 = z;
        uint x3 = x * (z + y);
        get();
    }
    function get() public pure {
    }
}
