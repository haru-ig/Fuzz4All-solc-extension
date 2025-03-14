pragma solidity ^0.8.0;
contract M10 {
    uint public b;
    constructor() {
        b = 1;
    }
    function subtract() public {
        --b;
    }
    function modify() public {
        b = b+b*(b / 2);
    }
    function half() public {
        b = b + b/2;
    }
}
