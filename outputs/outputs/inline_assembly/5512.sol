pragma solidity ^0.8.0;
contract SafeBc5 {
    address public immutable immutableB = address(0xe6d41123e822be41c720dfcecb166072f0f62a83);
    function test() pure public returns (uint[1] memory) {
        uint[1] memory var1 = [0];
        assembly {
            var1 := 0xf0f0
            mstore(0x00, 0)

            copy(0x00, var1, 4)
            copysign(var1, 2)
            copysign(var1, 3)
            copysign(var1, 0)
            copysign(var1, 1)
            var1 := mload(0x00)
            mstore(0x00, 0)
            var1 := mload(0x00)
        }
        return var1;
    }
}
