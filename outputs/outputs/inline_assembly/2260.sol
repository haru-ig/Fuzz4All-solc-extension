pragma solidity ^0.8.0;
contract MoreSemver
{
    uint d;
    address a;
    bool initialized;
    uint[20] public c;
    uint i = 0;
    constructor() {
        d = 1 * d;
        a = msg.sender;
        initialized = true;
    }
    function doThat() public {
        if (initialized) {
            c[i] = c[i] - 1;
            d = d * d;
            a = msg.sender;
            initialized = true;
            i = i + 1;
        } else {
            initialized = true;
        }
    }
}
