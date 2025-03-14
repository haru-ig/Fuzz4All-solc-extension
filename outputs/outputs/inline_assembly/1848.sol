pragma solidity ^0.8.0;
contract Example {
    uint256 internal x;
    constructor() external {
        x = 1;
    }
    function func() public {
        x = 1;
    }
}
