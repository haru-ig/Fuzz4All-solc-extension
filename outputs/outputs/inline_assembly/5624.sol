pragma solidity ^0.8.0;
contract ConstantAccessBlock7 {
    function test() public returns (bool) {
        bool _var;
        assembly {
            _var := gt(mload(0xb8900000000000000), add(mload(0x0), 0x1))
        }
        return _var;
    }
}
