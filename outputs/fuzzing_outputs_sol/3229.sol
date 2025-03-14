pragma solidity ^0.8.0;
contract LowLevelFallbackWithException {
    function lowLevelFallbackThrowing(uint256 amount) public pure {
        require(amount < 10, 'amount is too low!');
    }
}
