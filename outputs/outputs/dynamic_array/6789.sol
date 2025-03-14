pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_semantics3 {
    uint256[13] public a;
    uint256[13][13] public b;
    uint256[13][13][13] public c;
    function set(TestCase memory[] memory t) public {
        uint256 d = t[0].a;
        emit Emit02(d);
    }
    event Emit02(uint256 d);
    struct TestCase { uint256 a; }
}
