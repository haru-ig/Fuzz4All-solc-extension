pragma solidity ^0.8.0;
contract XYZ {
    uint b;
    constructor(uint x, uint y) {
        b = y - x;
    }
    function add(uint x, uint y) public returns (uint z) {
        z = y - x;
    }
    function subtract(uint x, uint y) public returns (uint z) {
        z = x + b + y;
    }
}
contract M9 {
    uint b;
    constructor(uint x, uint y) { }
    function divide() public returns (uint z) {
        z = subtract(x, 2*x);
    }
    function modify1(uint x) public {
        uint z = add(x, x/(x / 2));
    }
    function add() public returns (uint z) {
        b = b + z/b*(b / 2);
    }
    function modify2(uint x) public {
        b = subtract(b, x);
    }
    function subtract(uint x, uint y) public returns (uint z) {
        b = y + subtract(b, x/b*(b / 2));
    }
    function double1() public {
        b = multiply(b, b);
    }
    function multiply(uint x, uint y) public returns (uint z) {
        z = x * (x / y);
    }
}
