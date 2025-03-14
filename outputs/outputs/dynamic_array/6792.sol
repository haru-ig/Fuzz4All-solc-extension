pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_semantics3 {
    uint256[13] a;
    uint256[13][13] b;
    uint256[13][13][13] c;
    function set(TestCase[] memory t) public {

        a[t[0].a] = 123;
        emit Emit(t[0].a);
        uint256 d = a[t[1].a];
        emit Emit2(t[0].a, d);
    }
    event Emit(uint256 a);
    event Emit2(uint256 a, uint256 d);
    struct TestCase { uint256 a; }
}
