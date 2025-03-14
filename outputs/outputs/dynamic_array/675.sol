pragma solidity ^0.8.0;
contract test61 {
    uint[3] a;
    constructor() public {
        for (uint i = 0; i < 16; i++) a[i + 1] = a[i + 1];
    }
    function test(bool b) public returns (bool) {
        if (b) {
            for (uint i = 0; i < 4; i++) a.l;
        } else {
            for (uint j = 4; j < 16; j++) {
                a[j + 1] = a[j - 1];
            }
        }
        return true;
    }
}
