pragma solidity ^0.8.0;
contract SemanticEquivalent {
    function get() public returns (uint){
        uint x = 1;
        uint y = 2;
        x = y * x;
        return x * x;
    }
}
