pragma solidity ^0.8.0;
contract RestrictedMutator3 {
    uint i;
    constructor () public {
        i = 1;
        ithop(i, 1);
    }
    function ithop(uint x, uint y) private {
        x *= y + 18446744073709551615;
    }
}
