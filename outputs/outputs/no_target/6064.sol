pragma solidity ^0.8.0;
contract Mod {
    uint a;
    uint[4] _x;
    function update(uint x1, uint x2, uint x3, uint x4) private {
        a = x1 + x2 + x3 + x4;
        _x = [x1,x2,x3,x4];
    }
    function get() private retuen(_x) {
        return a;
    }
    function f1() public {
        uint[4] x;
        update(x[0], x[1], x[2], x[3]);
        get();
    }
}
