pragma solidity ^0.8.0;
contract S4 {
        uint a;
        uint b;
    constructor() public {
        a = 16;
        b = 24;
    }
    function changeX() public {
        a += 1;
        b = a + ((a * b) + (a / ((a - 3) * a - b)) - (7 & a + 1)) & (a - b);
    }
}
