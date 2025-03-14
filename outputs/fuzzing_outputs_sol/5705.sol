pragma solidity ^0.8.0;
contract semanticallyequivalent16
{
    uint public x=1;
    uint public y;
    uint public z=10;
    function test()public {
        x+=1;
        y++;
        z += 14;
    }
 }
