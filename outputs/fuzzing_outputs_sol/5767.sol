pragma solidity ^0.8.0;
contract semanticallyequivalent31
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
    function test31() public z_less_than_100{
        z += 30;
    }
    function test32() public {
        z = 30;
        x += 1;
        while (z__ > 2) {
            z--;
         }
        x = x + 2;
        while (z < 30) {
            z++;
         }
        x += 1;
    }
}
