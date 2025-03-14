pragma solidity ^0.8.0;
library Library {
    function testMethod() public pure returns (uint32) {
        uint32 x = 5;
        uint32 y;
        assembly {
            y := mul(mload(0), mload(x))
        }
        return y;
    }
}
