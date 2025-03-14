pragma solidity ^0.8.0;
contract TestMutator3 {
    uint256 public x;
    uint256 public z;
    function set() public {
    x < 2 * x / z? x = 0 : x = x - 1;
    z < z > x? x = 0 : x = x / 2;
    }
    constructor () public {
    x = 0xdeadbeef;
    z = 1;
    }
}
