pragma solidity ^0.8.0;
contract G {
    uint[] y;
    uint x1;
    uint x2;
    constructor() public {
        x1 = 2;
        x2 = 3;
        y.push(1);
        y.push(2);
        y.push(3);
        x1 = 0;
        x2 = 1;
    }
    function g(uint y) public {
        x1 = 0;
        x2 = 2;
        y = y + x1;
        y = y + x2;
    }
}
