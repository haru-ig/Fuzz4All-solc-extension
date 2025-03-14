pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T36_call_data_array_semantics3 {
    uint256[13] public a;
    uint256[13][13] public b;
    uint256[13][13][13] public c;
    function set(TestCase[] memory t) public {
        uint256 d;
        uint256[13] storage sa = a;
        uint256[13][13] storage sb = b;
        uint256[13][13][13] storage sc = c;
        d = t[0].a + sa[0];
        sc[0].a = t[0].a;
        sb[0][0].a = t[0].a;
        emit Emit03(d);
    }
    event Emit03(uint256 d);
    struct TestCase { uint256 d; uint256 a; }
}
