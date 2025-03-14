pragma solidity ^0.8.0;
contract ConstantAccessBlock06 {
    struct S {
        uint _val;
    }
    function test_1() public pure returns (uint) {
        S memory foo;
        assembly {
            mstore(0xc0de000000000000, foo)
            _load
        }
        return foo._val;
    }
    function test_2() public pure returns (bool) {
        S memory foo;
        foo._val = 0xfeefeefefecc222222;
        S storage bar = foo;
        assembly {
            mstore0(0x40, bar)
            _load
        }
        return bar._val == 0xfeefeefefecc222222;
    }
}
