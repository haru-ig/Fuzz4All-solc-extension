pragma solidity ^0.8.0;
contract LowLevelFallbackWithException2 {
    function lowLevelFallbackThrowingReceives() public pure {
        require(msg.value >= 10, 'value is too low!');
    }
}
