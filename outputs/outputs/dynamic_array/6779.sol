pragma solidity ^0.8.0;

contract T36_call_data_array_semantic2 {
    function set(address _dest, array memory m1, array memory m2) public {
        uint x[2] = [0];
        for (uint i = 0; i < m1.length; i++) {
            for (uint j = 0; j < m2.length; j++) {
                x[0] += m1[i];
            }
            x[1] += m2[i];
        }
        emit Emit01(x[0]);
    }
    event Emit01(uint a);
    int a;
}
