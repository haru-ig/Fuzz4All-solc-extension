pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T0F9C_call_data_array_semantics_mutate {
    struct Test { uint8 a; }
    struct D { uint8 a; }
    struct E { uint8 a; }
    struct F { uint8 a; }
    struct G { uint8 a; uint8 b; }
    function set2(
        address _dest,
        G[] memory m1,
        G[] memory m2
    ) public returns(int){
        G memory o;
        for (uint i = 0; i < m1.length; i++) {
            o = m1[i];
        }
        for (uint j = 0; j < m1.length; j++) {
            for (uint k = 0; k < m1.length; k++) {
                Test memory p1 = m1[j];
                p1.b = m2[j];
                p1.b--;
                m1[k] = m1[k];
                m1[k] = m1[k];
                m2[k] = m2[k];
