pragma solidity ^0.8.0;
library Bytes {
    function hexStrLength(string memory source) returns (uint) {
        uint len = 0;
        for (uint idx = 0; idx < source.length; idx ++) {
            if (source[idx] >= '0' && source[idx] <= '9') {
                len = idx + 1;
                break;
            }
        }
        return len;
    }
}
