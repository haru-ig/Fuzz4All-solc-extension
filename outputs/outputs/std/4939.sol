pragma solidity ^0.8.0;
contract Example {
    uint256 public immutable _number;
    constructor() public {
        _number = 0;
    }
    function reset() public {
        _number = 0;
    }
}
