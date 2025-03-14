pragma solidity ^0.8.0;
library Library1 {
    function testMethod() public pure returns (uint32) {
        uint32 y = add(0x00, 0x00);
        uint z = add(0x01, 0x00);
        uint w;
        assembly {
            w := add(z,y)
        }
        return w;
    }
}
