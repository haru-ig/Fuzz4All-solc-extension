pragma solidity ^0.8.0;
contract CappedMutator {
    uint s;
    address a0;
    address a1;
    uint x;
    uint x_;
    function () external payable {
        a1 = a0;
        s = x;
        x1 = x;
        x = x_;
        uint wrapped = x_ + x;
        x_ = x - wrapped % x;
    }
}
