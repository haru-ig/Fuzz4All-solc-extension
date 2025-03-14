pragma solidity ^0.8.0;
contract Fallback {
    function fallback() public pure {
        revert("Fallback has not been called.");
    }
}
