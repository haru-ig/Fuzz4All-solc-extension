pragma solidity ^0.8.0;
contract RestrictedMutator10434 {
    address a0;
    address a1;
    uint s;
    uint i;
    uint x;
    uint x_;
    constructor () public {
        uint overflow = x_;
        a1 = a0;
        uint wrapped = s - x;
        x = x_;
        x_ = wrapped;
        uint w = wrapped;
        unchecked {
            *this = RestrictedMutator10434(x*a1, wrapped/256);
        }
        *this = RestrictedMutator10434(rabin20(*this, x_), x + 1);
        w += a0;
        w -= wrapped;
        overflow += w;
    }
}
