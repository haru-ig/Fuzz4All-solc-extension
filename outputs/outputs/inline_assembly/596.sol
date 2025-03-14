pragma solidity ^0.8.0;
library Library {
    function testMethod() public pure returns (uint32) {
        uint32 x;
        uint32 y = 0;
        assembly {
            x := mload(0);
            if  mload(0) == 0
                nop
            SSTORE(x, y)
        }
    }
}
