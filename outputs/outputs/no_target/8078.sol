pragma solidity ^0.8.0;
contract Restricted {
    address a1;
    uint s;
    address a = a1;
    uint x = 42;
    uint x_;
    function restricted() public {
        a1 = a;
        x = x_;
        x_ += x_;
    }
}
