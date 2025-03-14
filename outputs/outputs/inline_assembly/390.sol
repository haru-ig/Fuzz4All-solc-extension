pragma solidity ^0.8.0;
contract M10 {
    uint public b;
    constructor() {
        b = 1;
    }
    function add() public {
        b = b+(b);
    }
}

contract M11 is M9,M10{
    uint public c;
    constructor() {
        c = 1;
    }
    function subtract() public {
        c = c-(c);
    }
    function multiply() public {
        c *= c;
    }
    function divideBy2() public {
        c = c+(c/2);
    }
    function doubler() public {
        c *= 2;
    }
    function addBoth() public {
        c = c+(c);
    }
    function doubleAndAdd() public {
        c = c+(c*2);
    }
}
