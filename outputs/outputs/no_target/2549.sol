pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts0827 {
    uint p = 100;
    uint x;
    constructor(uint _p) {
        p = _p;
        x = p + 1;
    }
    function test() {
        assert(x == p + 1);
    }
    uint z = x + 1;
}
