pragma solidity ^0.8.0;
contract semanticallyEquivalence
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
        x=20;
        y=15;
        z=uint(address(this).balance);
    }
   function test() public payable,z_less_than_100{
        while (z < 10) {
            x++;
            y=37;
            z++;
         }
        z=x+y;
    }
}
