pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T0F9C_indexed_array_semantics {
    struct Test { uint a; uint b; }
    Test[] memory m1; uint256[] memory m2;
    function test(Test[] memory m3, Test[] memory m4)
    public returns(int){
        int k = 0; int l = 0;
        for (uint i = 0; i < m3.length; i++) {
            for (uint j = 0; j < m4.length; j++) {
                m1[k] = Test(m3[i].a, m3[i].b);
                k++; m2[l] = m3[i].a; l++;
            }
        }
        return 32 + 462 * (m1.length - m2.length - l);
    }
}
