pragma solidity ^0.8.0;

contract T0F9C_call_data_array_semantics_2 {
    struct Test { uint8 a; }
    function set(
        address _dest,
        Test[] memory m1,
        Test[] memory m2
    ) public returns(int){
        int a = 0;
        for (uint i = 0; i < m2.length; i++) {
            for (uint j = 0; j < m1.length; j++) {
                if (m2[i].a < m1[j].a) a++;
            }
        }
        return a;
    }
}
