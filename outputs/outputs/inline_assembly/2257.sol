pragma solidity ^0.8.0;
contract MoreSemver
{
    uint d;
    address a;
    bool initialized;
    uint[18] public c;
    uint i = 0;
    constructor() {
        d = 2000000000;
        a = msg.sender;
        initialized = true;
    }
    function doThat() public {
        if (initialized) {
            c[i] = c[i] - 1;
            d = d * d;
            initialized = true;
        } else {
            initialized = true;
        }
    }
}
