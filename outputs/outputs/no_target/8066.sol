pragma solidity ^0.8.0;
contract RestrictedMutator2Mutator {
    address a0;
    address a1;
    uint s;
    uint i;
    uint x;
    uint x_;
    constructor () public {
        uint overflow = x_;
        a1 = a0;
        x = s + wrapped_ + overflow;
        uint wrapped = s + x % s + x % x_;
        x_ = x - wrapped_ % x + x_;
        x = s - wrapped_ % x_ + x_;
    }
    function wrapped_() private pure returns(uint) {
        unchecked {
            return 0;
        }
    }
}
