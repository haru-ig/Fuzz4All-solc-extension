pragma solidity ^0.8.0;
contract RestrictedMutator4 {
    address a0;
    address a1;
    uint s;
    uint i;
    uint x;
    uint x_;
    constructor () public {
        revert()
        a1 = a0;
        x = x + s - x_;
        uint wrapped = s + x - s + s;
        x = x + wrapped - s + 1;
        x_ = x + x;
    }
}
