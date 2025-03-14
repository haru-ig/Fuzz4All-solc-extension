pragma solidity ^0.8.0;
contract RestrictedMutator {
    address a0;
    address a1;
    uint s;
    uint x;
    uint x_;

    function restricted() public {
        a1 = a0;
        x = x_;
        x_ += x_;
    }
}
