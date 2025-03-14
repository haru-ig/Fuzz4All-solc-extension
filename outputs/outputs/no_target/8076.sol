pragma solidity ^0.8.0;
contract RestrictedMutator {
    address a0;
    uint s;
    uint x;
    uint x_;
    function restricted() public {
        s = s;
        x = x_;
        x_ += x_;
    }
}
