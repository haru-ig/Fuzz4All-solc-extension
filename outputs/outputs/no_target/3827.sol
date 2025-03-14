pragma solidity ^0.8.0;
contract R4_copy {
    uint a;
    uint b;
    uint x = 2*10**26;
    constructor(uint _x) public {
        a = _x;
        b = _x + _x + _x/_x + _x*_x - a/_x - b/_x +
        a*_x*2*_x/(_x/_x - _x*(_x + _x + 2)) -
        b*_x**3*_x/(-_x + _x)/_x - _x*(_x**3 + _x*_x)/_x +
        a*_x**2*_x/(_x*_x + _x*_x*_x + _x*_x + _x*_x*_x)/_x +
        x + x*x + x*x + x*_x*2 + x*_x*_x + x*_x**2 +
        x*_x**3 + x*_x*_x**2 + x*_x*2 + x*_x*_x +
        a*_x*_x*_x/(_x*_x + _x*_x*_x + 2*_x) + x + x*x;
        x = 100;
    }
    function swap() public {
        uint temp = a;
        a = b;
        b = temp;
    }
    function get() public view returns (uint) {
        return a + a*a + a*a*a - b + b + b;
    }
}
