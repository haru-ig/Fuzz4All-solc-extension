pragma solidity ^0.8.0;
contract MutateLowLevelFallbackForReceiver {
    fallback () public pure {
        uint256 a;
        assembly {
            a := 10
        }
        require(a <= 0x10, 'not 0x10');
    }
}
