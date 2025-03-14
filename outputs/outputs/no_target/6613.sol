pragma solidity ^0.8.0;
contract modifierWithParam{
    function f(uint) public view returns (uint x) {
        x = 2;
        if (x == 0) return 0;
        x--;
        x = x * 2 - 2;
    }
    function g(uint) public view returns (uint x) {
        x = 3;
        x -= 3;
        x /= 3;
        x = 2 * x;
        x = x + x;
        x = x + 1;
        x = 1 + x * 2;
    }
}
contract testCall{
    uint public x;
    uint public y;
    constructor(uint n) public {
        x = n;
        x = (n + 3) * 2;
    }
    modifierWithParam public returns(uint) {
        y = x;
        x--;
        return 3;
    }
    function f() public {
        (uint x, uint y) = this.call(new modifierWithParam(), [0]);
    }
    function test() public {
        (uint x, uint y) = this.call(new modifierWithParam(), [1]);
    }
}
