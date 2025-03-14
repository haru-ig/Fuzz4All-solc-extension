pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_semantics4 {
    uint256[13] a;
    uint256[13][13] b;
    uint256[13][13][13] c;
    function set(TestCase[] memory t) public {
        b[t[1].b] = a;
        emit Emit(t[1].b);
    }
    event Emit(uint256 b);
    struct TestCase { uint256 b; uint256 a; }
}
module M35_call_data_array_semantics4 {
    using T35_call_data_array_semantics4.TestCase;
    function set(TestCase[] memory t) public {
        b[t[1].b] = a;
        emit Emit(t[1].b);
        uint d = a[t[0].a];
        emit Emit2(t[0].a, t[1].b, d);
    }
    event Emit(uint256);
    event Emit2(uint256, uint256, uint256);
}
