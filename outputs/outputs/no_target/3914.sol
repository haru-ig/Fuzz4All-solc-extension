pragma solidity ^0.8.0;
 {
    contract C {
        int x = 0x7FFFFFFFFFFFFFFF;
        x += 1;
    }
}
contract D is B, C {
     function func() public {
         x = 0x7FFFFFFFFFFFFFFF;
         x += 1;
     }
 }
