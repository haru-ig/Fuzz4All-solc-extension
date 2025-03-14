pragma solidity ^0.8.0;
contract BurningWithFallback {
    uint256 private constant _value = 3;
    fallback () external payable {
        _;
    }
}
