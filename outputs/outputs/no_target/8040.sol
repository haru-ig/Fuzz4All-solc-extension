pragma solidity ^0.8.0;
contract RestrictedMutator3 {
    uint x = 100;
    uint xCopy = x;
    uint y;
    constructor (uint y_) public {
        y = y_;
    }
    function f() public {
        x = -x;
        xCopy += x;
        x -= 1;
        y -= 1;
    }
}
