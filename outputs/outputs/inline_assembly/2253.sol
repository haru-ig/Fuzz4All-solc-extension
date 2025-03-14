pragma solidity ^0.8.0;
contract BetterSemver
{
     uint d;
     address a;
     bool initialized;
     constructor() {
        d = 0;
        a = msg.sender;
        initialized = true;
     }
     function doThat() public {
        if (initialized) {
            d = d + 1;
            initialized = true;
        } else {
            initialized = true;
        }
     }
     function changeSomething() public {
        a = msg.sender;
        d = 0;
        while(a == a) {
            uint x = d;
        }
     }
}
