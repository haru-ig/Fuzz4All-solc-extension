pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCaller {
    uint x;
    fallback() external payable {
        {
            x = 10;
            fallback();
        }
    }
}
contract MutatedSimpleFallbackCaller3 {
    uint x;
    fallback() external payable {
        {
            x = 10;
            0;
        }
    }
}
