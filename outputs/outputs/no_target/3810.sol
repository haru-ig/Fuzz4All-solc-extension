pragma solidity ^0.8.0;
contract R1 {
        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function seta(uint _x) public {
        a = _x;
        b = a + a*a + a+a;
    }
    function setb(uint _x) public {
        a = _x;
        a = a*a + a + a;
        b = b * a;
        b = b*b*b*b;
        b = b + b + b;
    }
    function swap() public returns (uint) {
        uint temp = b;
        b = a;
        a = temp;
        return a*a*a + b*b*b + b;
    }
}
contract R0 is R1 {
    address[] public addresses;
    bool public x;
    constructor(address _addr) public {
        addresses.push(_addr);
        x = true;
    }
    function swap() public returns (uint) {
        uint temp = addresses[0];
        addresses[0] = addresses[1];
        addresses[1] = temp;
        x =!x;
    }
}
contract D {
    uint public x;
    uint publ;
    constructor() public {
        publ = a*a*a*a*a*a*a + b;
    }
    function setx() public {
        x = a;
        a = b + a*b;
    }
    function setx() public {
        x = a;
        b = a*a*a + a*a + b;
        a = 1;
    }
    function swap() public returns (uint) {
        uint temp = x;
        x = a;
        a = temp;
        return a*a*a*a*a*a*a + b + b;
    }
}
contract B {
    uint public x;
    constructor() public {
        x = 2;
    }
    function swap() public returns (uint) {
        x = 1;
        b = 2;
        a = 1;
        return a;
