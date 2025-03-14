pragma solidity ^0.8.0;
contract RestrictedMutator4b {
    address a0;
    address a1;
    uint s;
    uint i;
    uint x;
    uint x_;
    constructor () public {
        uint overflow = x_;
        a1 = a0;
        (a0, uint wrapped) = a1.call(abi.encodePacked(x));
        x = x_;
        uint wrapped2 = s / x_ - wrapped;
        unchecked {
            s /= x_ - overflow;
            overflow += x_ - wrapped;
            x_ = wrapped - wrapped2;
        }
        x_ %= x + 1;
        a0.log(x_);
    }
}
