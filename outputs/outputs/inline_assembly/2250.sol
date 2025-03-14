pragma solidity ^0.8.0;
contract MoreSemver
{
     uint d;
     uint e;
     address a;
     bool initialized;
     constructor() {
        d = 2000000000;
        e = 7500000000;
        a = msg.sender;
        initialized = true;
     }
     function doThat() public {
        try {
            if (initialized) {
                d = d + 1;
                d = safeMod(d, (55207));
                d = safeAdd(d, d);
                safeAdd(d, 226368);
            } else {
                initialized = true;
            }
        }
        catch (e) {
            initialized = true;
        }
     }
     function safeMod(uint a, uint b) private pure returns (uint) {
        if (b == 0) return 0;
        return ((a % b) + b) % b;
    }
     function safeAdd(uint a, uint b) private pure returns (uint) {
        if ((a^b) < a) return a + b; else return a;
    }
}
