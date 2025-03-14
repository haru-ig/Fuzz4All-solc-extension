pragma solidity ^0.8.0;
contract M9 {
    uint public b;
    constructor() {
        b = 1;
    }
    function divide() public {
        b = b-(2*b);
    }
    function modify() public {
        b=b+b*(b / 2);
    }
    function double() public {
        b = b+b;
    }
}
