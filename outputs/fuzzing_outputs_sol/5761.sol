pragma solidity ^0.8.0;
contract semanticallyequivalent21
{
    uint public z__;
    uint public x;
    uint public zx;
    function test21() public {
       z__ = 0;
       while (z__ < 3) {
           while (z__ < 3) {
              z__ = 0;
               while (z__ < 3) {
                   if (z__) break;
                   z__ = 0;
               }
           }
       }
    x++;
    }
}
