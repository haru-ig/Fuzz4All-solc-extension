pragma solidity ^0.8.0;
contract semanticallyEquivalent
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_100() {
        require(z>100);
        _;
    }
    constructor(){
          z__ = 100;
    }
    function test() public payable z_greater_than_100{
         while (z < 100) {
            z++;
         }
        y = 5;
    }
}
