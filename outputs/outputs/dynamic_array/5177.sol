pragma solidity ^0.8.0;
contract Test35 {
    struct Node {
        uint32 x;
        uint32 y;
    }
    struct L {
        Node memory nodes;
    }
    function f() public pure returns (L memory) {
        L memory result;
        result.nodes = Node(1, 2);
        return result;
    }
    function g() public pure returns (L memory) {
        L memory result;
        result.nodes.x = result.nodes.y;
        return result;
    }
}
