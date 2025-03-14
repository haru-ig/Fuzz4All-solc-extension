pragma solidity ^0.8.0;
struct StructWithNestedArrays {
    uint256[3] array1;
    uint[2] nestedInts;
}
contract Test {
    uint256 constant ONE = 1;
    uint256 constant TWO = 2;
    uint256 constant THREE = 3;
    StructWithNestedArrays storage st;
    function test(StructWithNestedArrays storage st) public {
        st.array1[0] = ONE;
        st.array1[1] = TWO;
        st.array1[2] = THREE;
        st.nestedInts[0] = ONE;
        st.nestedInts[1] = TWO;
        StructWithNestedArrays storage st2 = st;
        st.nestedInts[0] += ONE >> 4;
        st.nestedInts[1] += TWO >> 8;
        uint256 x = st.nestedInts[0];
        uint y = st.nestedInts.length;
        uint z = st.nestedInts.length - 1;
        uint a = st2.nestedInts.length;
        uint b = st2.nestedInts.length - 1;
        uint c = st2.nestedInts.length == 2;
        uint d = st2.nestedInts.length & ONE;
        uint e = st2.nestedInts.length == 0;
        uint f = st2.nestedInts.length == st.nestedInts.length;
        uint g = st2.nestedInts.length!= 0;
        uint h = st2.nestedInts.length!= ONE;
        uint i = st2.nestedInts.length!= st.nestedInts.length;
        x = st2.nestedInts.length - 3;
        x = st2.nestedInts.length + 2;
        x = st2.nestedInts.length < 1;
        x = st2.nestedInts.length <= 1;
        x = st2.nestedInts.length < st.nestedInts.length;
        x = st2.nestedInts.length <= st.nestedInts.length;
        x = st2.nestedInts.length > 1;
        x = st2.nestedInts.length >= 2;
        x = st2.nestedInts.length > st.nestedInts.length;
        x = st2.nestedInts.length >= st.nestedInts.length;
    }
}
