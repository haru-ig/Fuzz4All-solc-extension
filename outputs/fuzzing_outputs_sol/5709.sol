pragma solidity ^0.8.0;
contract semanticallyequivalent16
{
    uint public x;
    uint public y;
    uint public z;
    modifier test() {
        x = 0;
        y = 0;
        z = 0;
        _;
    }
    function test()public {
        x = 1;
        y = 10;
        z = 100;
    }
}
