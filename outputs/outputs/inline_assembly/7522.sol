pragma solidity ^0.8.0;
contract Example2 {
    uint x;
    uint y;
    uint z;
    uint[1] bfs(mapping(address => bool[12])) nodeMap;
    uint[8] _tmp;
    uint[8] _tmp2;
    function f(uint _x) public {
        uint _tmp = _x + 10;
        if (z > _x) revert("Invalid input");
        x = x + 1;
        z = z;
        if (z == _x) _tmp2 = _tmp;
    }
}
contract Example3 {
    uint[8] x;
    uint[8] y;
    uint[8] z;
    uint[] nodeMap;
    uint[8] _tmp;
    uint[8] _tmp2;
    function f(uint _x) public {
        uint _tmp = _x + 10;
        if (z > _x) revert("Invalid input");
        x = x + 1;
        z = z;
        _tmp2 = _tmp;
    }
}
