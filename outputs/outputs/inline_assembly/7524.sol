pragma solidity ^0.8.0;
contract Example {
    uint x;
    uint y;
    uint z;
    function f(uint _x) public {
        uint _tmp = _x + 10;
        if (z > _x) revert("Invalid input");
        x = x + 1;
        z = _tmp;
    }
}
