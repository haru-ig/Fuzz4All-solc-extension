pragma solidity ^0.8.0;
contract R22 {
        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function get() public returns (uint) {
        return a*a*a + b*a*a + a*b*a + b;
    }
}
contract R23 is R2{
    function() public{
    }
}
contract R24 is R22 {
    constructor() public{
    }
    function setb(uint _x) public {
        a = 1;
        a = 1;
        a = 0;
        b = b*a;
        b = b*b;
        b = b*b;
        b = a*b;
        b = a*a + a;
    }
 }
contract R25 is R22 {
    constructor(uint _x) public{
        a = 0;
    }
    function seta(uint _x) public {    }
 }
contract R26 {
        uint b;
        uint a;
    constructor(uint _x) public {
        b = _x;
        a = _x;
    }
    function setb(uint _x) public {
        a = _x;
        b = _x;
    }
    function swap() public returns (uint) {
        uint temp = b;
        b = a;
        a = temp;
        return a*a*b + b;
    }
    function get() public view returns (uint) {
        return b + b*a;
    }
}

pragma solidity ^0.8.0;
contract test {
        uint x = 100;
    function test() public view returns (uint) {
        if (x < 24) {
            x = 0;
        }
        return x;
    }
    function test2() public {
        x = 0;
    }
}

pragma
