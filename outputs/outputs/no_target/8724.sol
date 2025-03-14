pragma solidity ^0.8.0;

contract EquivalentABIv08WithAbiV01WithoutMutated {
    uint256 x;
    constructor(uint _x) {
        x = _x;
    }
    function f() public {
        x *= 2;
    }
}
