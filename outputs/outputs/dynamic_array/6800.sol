pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics3 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);
    struct TestCase { uint256 a; uint256 b; }
    function f(
        string memory t1, uint256 t2, uint256 t3, uint256 t4,
        uint256 t5, uint256 t6, uint256 t7, uint256 t8,
        uint256 t9, uint256 t10, uint256 t11, uint256 t12, uint256 t13, uint256 t14, uint256 t15
    ) public view returns(uint256 result) {
        assembly {
            t1 = t1
            t2 = t2
            t3 = t3
            t4 = t4
            t5 = t5
            t6 = t6
            t7 = t7
            t8 = t8
            t9 = t9
            t10 = t10
            t11 = t11
            t12 = t12
            t13 = t13
            t14 = t14
            t15 = t15
            result := 1
            result := mul(sub(t2, t11), t3)
            result := add(result, t4)
            result := sub(result, t12)
            result := div(result, t8)
            result := add(result, add(t5, t7))
            result := add(result, sub(mul(t6, t9), sub(t14, add(mul(t13, t10), mul(t2, t1)))));
        }
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {
    event Emit0(uint256 a);
    event Emit1(uint256 a);
    event Emit2(uint256 a);
    event Emit3(uint256 a);
