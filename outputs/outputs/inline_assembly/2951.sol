pragma solidity ^0.8.0;

contract C {
    uint public x;
    mapping(uint=>uint) mapping2;
    function setX(uint _x) public{
        x = _x;
        mapping2[x]= _x;
    }
}
contract D {
    function f() public {
        C c = new C;
        uint x2 = 3;
        c.setX(x2);
        uint x4 = c.mapping2[x2];
    }
}
