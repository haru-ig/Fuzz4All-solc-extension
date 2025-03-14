pragma solidity ^0.8.0;
contract Mutate6 {
    uint[] memory b;
    uint[1185] private s;
    uint[51238252] d;
    constructor() {
        s = s * 119;
        for(uint i = 0; i < 100000; i++)
            v();
        s = s * 0;
    }
    function v() private {
        i();
        d[100000] = d[100000] + s[100000];
        i();
    }
}
