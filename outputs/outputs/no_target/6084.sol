pragma solidity ^0.8.0;
contract Mod5 {
    uint a;
    uint x;
    constructor(uint y) public {
        update(y);
    }
    function update(uint y) private {
        a = uint16(y);
        a = uint(a);
        a = a << 1;
        a = 2**(x);
        x = 4*x;
    }
    function get(uint x) public returns(uint) {
        require(uint16(x) == a);
        return a;
    }
    function f1() public {
        x--;
        update(x);
        get(x);
    }
}
