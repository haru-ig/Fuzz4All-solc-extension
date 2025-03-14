pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_semantics4 {
    uint256[13][13] b;
    uint256[13] a[13];
    uint256[13][13] c;
    function set(TestCase[] memory t) public {
        a[t[0].a][t[1].a] = 123;
        emit Emit(t[0].a, t[1].a);
        uint256 d = a[t[0].a][t[1].a];
        emit Emit2(t[0].a, t[1].a, d);
    }
    event Emit(uint256 a, uint256 b);
    event Emit2(uint256 a, uint256 b, uint256 d);
    struct TestCase { uint256 a; uint256 b; }
}
