pragma solidity ^0.8.0;
contract c {
    uint a;
    constructor() public {
        a = 1;
    }
    function f() public {
        uint x;
        (x,) = msg.value;
        assert (a <= x);
    }
    function g() external {
        uint x;
        (x,) = msg.value;
        assert (x > a);
    }
}
