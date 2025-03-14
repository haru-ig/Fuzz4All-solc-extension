pragma solidity ^0.8.0;
contract Mutated {
    uint256 public immutable originalBalance;
    constructor() {
        originalBalance = _value;
    }
    function _mutate() public {
        originalBalance += _value;
    }
}
