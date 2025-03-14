pragma solidity ^0.8.0;
library Library1 {
    function testMethod() public pure returns (uint32) {
        uint32 x;
        assembly {
            x := add(mload(0), 0x00)
        }

        return x;
    }
}
