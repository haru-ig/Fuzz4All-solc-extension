pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCaller {
    uint internal x;
    receive() payable external {
        x = 10;
    }
}

pragma solidity ^0.8.0;
