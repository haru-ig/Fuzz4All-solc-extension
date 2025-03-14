pragma solidity ^0.8.0;
contract MutatingFallback {

    receive() external payable {}

    fallback() external pure {
        revert('');
    }
}
