pragma solidity ^0.8.0;
contract Mod5 {
    uint a;
    uint x;
    constructor(uint y) public {
        a = uint16(y);
        x-- ;
        a = uint(a);
        a = a << 1;
        x = 4*x;
        a = a & 1;
        x = x + x;
        x -= 1;
        x = x + x;
        a = (y << 1);
        a = x << 0;
        x = x * 1;
        a = uint(x);
        a = 1u << 0;
        a = x;
        x = x + 1;
        x--;
        a = a << 1;
        a = 1;
    }
    function get(uint x) public returns(uint) {
        require(uint16(x) == a);
        return a;
    }
    function f1() public {
        x++;
        update(x);
        get(x);
    }
}
