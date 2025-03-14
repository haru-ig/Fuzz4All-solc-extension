pragma solidity ^0.8.0;
contract EquivalentABIv08WithAbi2v06WithoutMutated {
    uint256 public x;
    constructor(uint _x) {
        x = 2 * _x;
    }
    function f() public {
        x = x / 2;
    }
}
