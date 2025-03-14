pragma solidity ^0.8.0;
contract R3 {
    uint a;
    uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function swap() public returns (uint) {
        uint temp = b;
        b = a;
        a = temp;
        return a*a + a;
    }
    function swapA(uint _x) public returns (uint) {
        uint temp = a;
        uint temp2 = _x;
        a = b;
        b = temp;
        a = temp2;
        return a*a;
    }
    function swapB(uint _x) public returns (uint) {
        uint temp = b;
        uint temp2 = _x;
        b = a;
        a = temp;
        b = temp2;
        return b*b;
    }
    function geta() public view returns (uint) {
        return a*a + a;
    }
    function getb() public view returns (uint) {
        return b*b + a;
    }
    function getBoth() public view returns (uint) {
        return a + b;
    }
}

pragma solidity ^0.8.0;
contract R4 {
    uint a;
    uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function swap() public returns (uint) {
        uint tempA = b;
        uint tempB = a;
        uint temp = tempA;
        b = tempB;
        a = temp;
        return a*a*a + b*b*b + b*b + a*a + a;
    }
    function swapA(uint _x) public returns (uint) {
        uint tempA = a;
        uint tempB = _x;
        a = b;
        b = tempA;
        a = tempB;
        return a*a + a;
    }
    function swapB(uint _x) public returns (uint) {
        uint tempA = b;
        uint tempB
