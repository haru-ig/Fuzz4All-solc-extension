pragma solidity ^0.8.0;
contruct M10 {
    uint b;
    constructor() {
        b = 1;
    }
    function divide() public {
        b = b-(2*b);
    }
    function modify() public {
        b=b+(1*b/2);
    }
    function double() public {
        b = b+(2*b);
    }
}
