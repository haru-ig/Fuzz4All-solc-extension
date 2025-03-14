pragma solidity ^0.8.0;
contract R2 {
        uint a;
        uint b;
        uint c;
        uint z;
        uint k;
    constructor(uint _x) public {
        a = _x;
        b = _x;
        c = _x;
        z = _x;
        k = _x;
    }
    function seta(uint _x) public { b = c; }
    function setb(uint _x) public { c = a; a = _x; }
    function setc(uint _x) public { c = b; b = _x; }
    function setz(uint _x) public { a = b; z = c; }
    function sets() public {
        z--;
        a--;
        ++a;
        b++;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        ++b;
        k++;
        ++k;
        ++k;
        ++k;
        ++k;
        ++k;
        ++k;
        ++k;
        ++k;
        ++k;
        ++k;
        ++k;
        ++k;
        ++k;
    }
    function get() public view returns (uint) {
        return c + c*c + a + a + z + b + b + b + b + a;
    }
    function cswap() public returns (uint) {
        uint temp = b;
        b = z; z = temp;
        uint temp1 = c;
        c = a; a    = temp1;
        uint temp2 = z;
        z = k; k    = temp2;
        uint temp3 = a;
        a = b; b    = temp3;
        return a*a*a + z*z + b*b;
    }
}


contract test {
    function test1() public returns (uint) {
        R2 instance;
        instance.a = 2;
