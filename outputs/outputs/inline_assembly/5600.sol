pragma solidity ^0.8.0;
contract MemoryAccessBlock08 {
    function test() public {
        uint _var;
        for (uint i = 0; i < 3; i++) {
            assembly {
                _var := gt(mload(0xc0de0000000000000), add(mload(8), 0x200000000000000000000000000000000000))
            }
        }
    }
}
