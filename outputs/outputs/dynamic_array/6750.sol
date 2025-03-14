pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T0F9C_nested_call_data_array {
    struct Foo { uint a; }
    struct Bar { uint b; }
    struct Qux { uint c; }
    struct Test { uint a; bytes1[] a1; uint[] b1; uint a2; uint[] c; Foo foo; address[] addr; Bar bar; Qux qux; }
    function test(Test[] memory m) public returns(int[] memory){
        int[] memory a = new int[](3*8);
        for (uint i = 0; i < m.length; i++) {
            uint j = 0;
            while (j!= 5 && j < m[i].a1.length) {
                m[i].a1[j] <= 0; j++;
            }
            for (uint j = 0; j < 5; j++) {
                m[i].a2 = m[i].a;
            }
            a[j] = i;
            for (uint j = 0; j < m[i].a1.length; j++) {
                m[i].a1[j] = 1;
            }
            i++;
        }
        return a;
    }
}
