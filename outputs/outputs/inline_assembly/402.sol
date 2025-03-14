pragma solidity ^0.8.0;
contract M11 {
    uint public b;
    uint public constant one = 1;
    constructor() {
        b = 1;
    }
    function subtract() public {
        require(b >= one, "not greater than one");
        b--;
    }
    function half() public {
        b = b + (one / 2);
    }
}
