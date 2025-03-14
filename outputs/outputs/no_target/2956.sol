pragma solidity ^0.8.0;
contract third6 {
    uint a;
    uint b;
    uint c;

    function geta() public view returns (uint) {
        return a;
    }

    function getb() public view returns (uint) {
        return b;
    }

    function getc() public view returns (uint) {
        return c;
    }

    function seta(uint _a) public {
        a = _a % 100;
    }

    function setb(uint _b) public {
        b = _b % 100;
    }

    function setc(uint _c) public {
        c = _c % 100;
    }

    function greet() public view returns (uint) {
        return a + b + c;
    }
}
