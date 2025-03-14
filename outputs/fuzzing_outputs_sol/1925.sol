pragma solidity ^0.8.0;
contract DuplicateFallback {
    uint256 private constant _value = 3;
    receive () external payable {
        emit Call();
        DUPLICATE(msg.value);
    }
    fallback () external {
    }
    event Call();
}
