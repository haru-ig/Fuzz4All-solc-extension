pragma solidity ^0.8.0;
contract semanticallyequivalent40
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
    function test40() public z_less_than_100{
        while (z__ < 5) {
            z--;
         }
        x++;
    }
}
