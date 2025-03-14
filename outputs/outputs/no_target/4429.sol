pragma solidity ^0.8.0;
contract L {
    bytes32 public constant value = 0xfffffffffffffffffffffffffffffffffffffff000000000000000000000000000000000000000000000000000000000fffffffffffffc2fcaa7d1d066a0e4059b0184a00b41200;

    constructor () public {

    }
    fallback() external payable {
        assert(abi.encodePacked(value).length == 32, "test.test");
        assert(value == value, "test.test");
        assert(value == value.toUint256(), "test.test");
    }
}
