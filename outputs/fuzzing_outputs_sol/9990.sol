pragma solidity ^0.8.0;


contract Example {
    uint x;
    uint a;
    uint b;


    constructor() {
        a = 3;

        b = 5;

        x = 8;
    }

    function testCall() public {
        a = 1;
        b = 2;
        x = getDivided();
    }

    function getDivided() public view returns(uint)  {
        return a / b;
    }


    function getX() public view returns(uint) {
        return x;
    }
}
