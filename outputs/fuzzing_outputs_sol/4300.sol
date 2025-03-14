pragma solidity ^0.8.0;
contract SimpleFallbackCaller {
    uint internal x;
    receive() external {
        if (msg.value!= 0) {
            x = 10;
        } else {
            x = 1;
        }
        x = x + 3;
    }
}
