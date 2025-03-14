pragma solidity ^0.8.0;
contract Mutated28 {
    uint x = 3;
    struct C1 {
        uint y;
        constructor(uint16) public { }
    }
    struct C2 {
        uint y;
        constructor(uint16) public payable { }
    }
    function f1() public {
        (uint16 y, ) s = C1(x).y;
    }
    function f2(uint x, uint y
    ) public {
        (uint16, ) s = C1(x, y).y;
    }
    function f() public payable {
        (uint y, ) s = C2(x).y;
    }
    }
