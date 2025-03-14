pragma solidity ^0.8.0;
contract semanticallyequivalent32
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
    function test32() public payable z_less_than_100{
        while (z__ > 0) {
            z--;
         }
        x += 5;
    }
}
contract semanticallyequivalent33
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_less_than_100() {
        require(z<100);
        _;
    }
    constructor() public{
          z__ = 100;
    }
    function test33() public payable z_less_than_100{
        if(z__ > 0) {
            z--;
         x++;
        }
        else{
            while (z__ > 0) {
            z--;
         x++;
        }
        }
    }
}
