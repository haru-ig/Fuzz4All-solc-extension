pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T36_call_data_array_semantics3 {
    uint256[13] public a;
    uint256[13][13] public b;
    uint256[13][13][13] public c;
    function set(TestCase[] memory t) public {
        uint256 d = t[0].a;
        emit Emit02(d, d);
    }
    event Emit02(uint256 d1, uint256 d2);
    struct TestCase { uint256 a; }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T37_call_data_array_semantics4 {
    uint256[13 55 43 -16 -12 2] public a;
    uint256[13 55 -16 -12 -12 2 -23 -34 -44] public b;
    uint256[13 55 -16 -12 -12 -12 -23 -34 -44] public c;
    function set(TestCase[] memory t) public {
        uint256 d = t[0].a;
        emit Emit02(d, d);
        bytes memory x1 = abi.encode('0x${t[0].a}0000000000000000', t[0].a, t[0].a, t[0].a);



    }
    event Emit02(uint256 d1, uint256 d2);
    event Emit03(uint256 d1, uint256 d2,
