pragma solidity ^0.8.0;
contract MutatedBlock7 {
    function test() public returns (bool) {
        bool _var;
        uint32 size = 2097152;
        assembly {
            _var := gt(mload(0xb8900000000000000), add(mload(0x0), and(add(size, 0x3), 0x700000)))
        }
        return _var;
    }
}
