pragma solidity ^0.8.0;
contract ConstantAccessBlock08 {
    function test() public returns (bool) {
        assembly {
            gt(mload(0xc0de000000000000), add(mload(0x40), 0x2000000000000000000000000000000000), 0)
        }
        return true;
    }
}
