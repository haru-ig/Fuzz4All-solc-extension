pragma solidity ^0.8.0;
contract R2 {
        uint a;
        uint b;
        uint c;
        uint d;
    constructor() public {
        a = 0;
        b = 1750;
        c = 5;
        d = 18;
    }
    function seta(uint _x) public {
        a = _x;
        b = b + b*b;
        b = b + b^b;
        b = b + 1 + b + a;

        b = b + b + d;
    }
    function setb(uint _x) public {
        d = a;
        b = b + b*b;
        b = b + 1 + b + b;
        b = b + c^2;
        b = b + b + 1 + a;
        b = b + a*a;
        b = b + b + b;
        b = b + b + c;
        b = b + b/a;
        b = b + b + b;
        b = b + 1 + a;
        b = b + b;
    }
    function setc(uint _x) public {
        b = b + b*b;
        b = b + 1 + b + b + 5;
        b = b + b + a + 5;
        b = b + a^a;
        b = b + b + b;
        b = b + b + b;
        b = b + b+(0 + b);
    }
    function get() public view returns (uint) {
        return a * c + b*a + c*c + c*b + b*b;
    }
}
