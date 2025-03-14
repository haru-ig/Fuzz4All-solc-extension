pragma solidity ^0.8.0;
contract semanticallyEquivalent {
    uint public z__;
    uint public x;
    uint public y;
    uint public z;




    constructor(){
        z__;
    }
    function test() public z_less_than_100{
        while (z < 10) {
            z++;
        }
        y = 5;
    }
}
