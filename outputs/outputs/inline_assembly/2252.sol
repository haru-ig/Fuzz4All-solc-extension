pragma solidity ^0.8.0;
contract MoreSemver
{
     uint d;
     address a;
     bool initialized;
     constructor() {
        d = 2000000000;
        a = msg.sender;
        initialized = true;
     }
     function doThat() public {
        if (!initialized) {
            d = d + 1;
            d = d * d;
            a = msg.sender;
            initialized = true;
        } else {
            initialized = false;
        }
     }
}
