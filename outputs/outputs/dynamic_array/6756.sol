pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T18B_call_data_array_semantics {
    struct Test { uint8 a; }
    function set(
        address _dest,
        Test[] memory m1,
        Test[] memory m2
    ) public {
        m1[0].a = uint8(m1[0].a);
        m2[0].a = uint8(m2[0].a);
        m1[0].a = m2[0].a;
    }
}

contract T28P_call_data_array_semantics {
    function set(address _dest, Test[] memory m1, Test[] memory m2) public {
        int a = 0;
        for (uint i = 0; i < m1.length; i++) {
            for (uint j = 0; j < m2.length; j++) {
                if (m1[i].a < m2[j].a) a++;
            }
        }
        emit Emit01(a);
    }
    event Emit01(int v);
    struct Test { uint8 a; }
}
