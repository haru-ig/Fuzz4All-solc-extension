pragma solidity ^0.8.0;
contract D {
    uint[2] memory x;
    uint[2] memory y;


    function foo() public {
        x =  x * x + x;
        y =  3 * x * y / 10;
    }
}
