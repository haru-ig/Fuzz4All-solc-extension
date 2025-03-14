pragma solidity ^0.8.0;
contract Unrestricted {
    address a;
    uint s;
    address a_ = a;
    uint x = 42;
    uint x_;
    function unrestricted() public {
        a = a_;
        x_ += x_;
        x = x_;
    }
}
