pragma solidity ^0.8.0;
contract SemanticEquivalentDynamicArrayType {
    uint x;
    function Test() public {
        uint256 y;
        for (uint i = 0; i < x; ++i) {
            y = i;
        }
    }
}
