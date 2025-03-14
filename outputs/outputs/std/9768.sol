pragma solidity ^0.8.0;
contract MutateNeg
{
    string myString;

    constructor() {
        myString = "Hello World";
    }

    function f() public view {
        x *= -1;
        z = x;
        y = x;

        x--;
        z = x;
        z = x;
        y = x;

        x--;
        x -= 10;
        z = x;
        y = x;
        y = -x;
    }

    uint x;
    uint y;
}
