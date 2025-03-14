pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T200D_call_data_array_semantics {
    function set(
        address _dest,
        Test[] memory m1,
        Test[] memory m2
    ) public returns (uint256) {
        m1[0].a = uint8(m1[0].a);
        m2[0].a = uint8(m2[0].a);
        m1[0].a = m2[0].a;
    }
}
