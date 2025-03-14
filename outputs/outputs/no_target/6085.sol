pragma solidity ^0.8.0;
contract Mod6 {
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
    function f2() public {
        x = uint16((a << (x + 1)) + (x + 1));
        update(x);
        get(x);
    }
    function f3() public {
        x = uint16((a * x) >> 16);
        update(x);
        get(x);
    }
}
