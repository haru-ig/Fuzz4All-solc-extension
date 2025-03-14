pragma solidity ^0.8.0;
contract SemanticSame {
    function get(uint z) public {
        uint x = 1;
        uint y = 3;
        x = y * z;
        get();
    }
    function get() public pure {
    }
}
