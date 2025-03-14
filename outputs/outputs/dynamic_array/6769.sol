pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35I_call_data_array_semantics {
    function set(address _dest, Test memory[] memory m1, Test memory[] memory m2) public {
        int a;
        for (uint i = 0; i < m1.length; i++) {
            bool b; bool c;
            for (uint j = 0; j < m2.length; j++) {
                (b, c) = (1, 2);
                a += (m1[i].a < m2[j].a)? 1 : 0;
            }
            emit Emit01(a);
            a -= 2;
        }
    }
    event Emit01(int v);
    struct Test { uint8 a; }
}
