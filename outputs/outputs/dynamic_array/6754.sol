pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T0F9C_call_data_array_semantics {
    struct Test { uint8 a; }
    function set(
        address _dest,
        Test[] memory m1,
        Test[] memory m2
    ) public returns(int){
        int a = 0;
        for (uint i = 0; i < m1.length; i++) {
            for (uint j = 0; j < m2.length; j++) {
                if (m1[i].a < m2[j].a) a++;
            }
        }
        return a;
    }
}
