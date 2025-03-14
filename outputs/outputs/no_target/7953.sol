pragma solidity ^0.8.0;
contract TestMutator5 {
    uint256 public x;
    uint256 public y = 1;
    uint256 public z = 2;
    constructor () public {
    x = 0;
    }
    function set() public {
        assert(z < x);
        x = 1;
    }
    function set2() public {
        assert(z > y);
        y = 1;
    }
}
