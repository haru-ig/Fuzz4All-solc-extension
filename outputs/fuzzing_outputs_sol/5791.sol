pragma solidity ^0.8.0;
contract SemanticallyEquivalentFallback
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
    fallback(): payable z_less_than_100{
        while (z < 10) {
            x += 1;
        }
    z = 100000;
    }
}
