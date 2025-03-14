pragma solidity ^0.8.0;
contract semanticallyequivalent20
{
    uint public z__;
    uint public x;
    uint public y;
    uint public z;
    modifier z_greater_than_0() {
        require(y>z__);
        _;
    }
    function test20() public {
       z__ = 0;
       while (z__ < 5) {
           z--;
         }
        x++;
    }
}
