pragma solidity ^0.8.0;
contract ConstantAccessBlock12s {
    function test() public returns (bool) {
        uint _var;
        for (uint i = 0; i < 3; i++) {
            assembly {
                _var := gt(mload(0xc0de0000000000000), add(mload(0x40), 0x20000000000000000000000000000000))
            }
        }
        return _var;
    }
}

pragma solidity ^0.8.0;
contract ConstantAccessBlock12m {
    function test() public returns (bool) {
        address _var;
        for (uint i = 0; i < 3; i++) {
            assembly {
                _var := gt(mload(0xc0de0000000000000), add(mload(0x40), 0x200000000000000000000000000000))
            }
        }
        return _var;
    }
}

pragma solidity ^0.8.0;
contract ConstantAccessBlock12r {
    function test() public returns (bool) {
        uint64 _var;
        for (uint i = 0; i < 3; i++) {
            assembly {
                _var := gt(mload(0xc0de0000000000000), add(mload(0x40), 0x2000000000000000000000000000000))
            }
        }
        return _var;
    }
}

pragma solidity ^0.8.0;
contract ConstantAccessBlock12x {
    function test() public returns (bool) {
        bytes32 _var;
        for (uint i = 0; i < 3; i++) {
            assembly {
                _var :=
