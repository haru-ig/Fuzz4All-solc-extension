pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCaller {
    uint x;
    event Change(uint256 y);
    function ChangeFallback(uint8 y) {
        if (y > 6) {
            x = 20;
            emit Change(y);
        }
    }
}
