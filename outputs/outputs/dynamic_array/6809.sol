pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics3a {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);
    struct TestCase { uint256 a; bytes b; }
    constructor() public {
        emit Emit3(256);
    }
    function set(uint256 _1, uint256 _2) public {
        emit Emit1(1);
        TestCase memory _1_1 = TestCase({a:_1, b:""});
        TestCase[] memory _4 = new [3] [65535];
        _4[0] = _1_1;
    }
    function get() public view returns (uint256 result) {
        emit Emit0(1);
        result = 200;
    }
}
















/*  - Conversion from uint to int on the left operand where right operand is the
