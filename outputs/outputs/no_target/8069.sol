pragma solidity ^0.8.0;
contract RestrictedMutator3 {
    address x;
    address a_;
    constructor () public {
        x = a_ + x;
        x = a_;
        x = a_;
        x = a_;
        x = a_;
    }
}
