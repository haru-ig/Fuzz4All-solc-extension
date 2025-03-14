pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T28X_call_data_array_semantics {
    function set(
        address _dest,
        Test[] memory m1,
        Test[] memory m2,
        uint x
    ) public {
        uint256 index;
        assembly {

            m1[index] := m1[m1.length + index]
        }
    }
    struct Test { uint8 a; }
}
