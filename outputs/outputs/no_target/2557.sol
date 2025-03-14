pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts0822b {
    constructor(uint x) {
        p = x;
    }

    function _mutate_constructor(uint z) internal returns (uint) {
        x = z;
        p = x;
        e = x;
        if (x == z) { x = 20; }
        else if (x < 0) { x = 20; }
        x = x + uint256(1);
        p = x;
        e = x;
        if (x == 20) { x = 22; }
        else if (x < 0) { x = 22; }
        return 2;
    }
}
