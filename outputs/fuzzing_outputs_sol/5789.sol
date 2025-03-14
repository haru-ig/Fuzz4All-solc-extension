pragma solidity ^0.8.0;
contract SemanticallyEquivalentMutations
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_less_than_100() {
        require(z<100);
        _;
    }
    constructor(){
          z__ = 100;
    }
    function test() public payable z_less_than_100{
        z = 10;
        while (z < 10) {
            x += 1;
        }
        y = 5;
    }
}

contract SemanticallyEquivalentReentrancy
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_less_than_100() {
        require(z<100);
        _;
    }
    constructor(){
          z__ = 100;
    }
    function test() public payable z_less_than_100{
        z = 10;
        while (z < 10) {
            z++;
         }
        z = 10;
    }
}
