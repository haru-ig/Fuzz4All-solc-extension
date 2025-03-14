pragma solidity ^0.8.0;
contract MutatedSimpleFallbackCaller {
    uint internal x;
    receive() external payable {
        if (msg.value!= 0) {
            x = 10;
        } else {
            x = 1;
        }
    }
}
