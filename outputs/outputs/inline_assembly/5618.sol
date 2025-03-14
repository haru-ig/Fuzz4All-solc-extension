pragma solidity ^0.8.0;
contract ConstantAccessBlock6 {
    function test() public returns (bool) {
        bool _var;

        assembly {
            _var := gt(mload(0xb8900000000000000), add(mload(0x20), 0x20000))
        }

        return _var;
    }
}
