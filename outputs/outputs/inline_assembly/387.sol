pragma solidity ^0.8.0;
contract M10 {
    uint b;
    constructor() {
        b = 1;
    }
    function divide() public {
        uint b1 = b-(2*b);
        uint b2 = b;
        uint b3 = b1;

        b = b1;
    }
    function modify() public {
        uint b1 = b+b*(b/2);
        uint b2 = b;
        uint b3 = b1;
        b = b1;
    }
    function double() public {
        uint b1 = b+b;
        uint b2 = b;
        uint b3 = b1;

        b = b1;
    }
}
