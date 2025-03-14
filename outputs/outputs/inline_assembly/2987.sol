pragma solidity ^0.8.0;
contract C {
    struct S {address a; mapping (uint => uint) m; string s;} t;
    function set(uint j, uint v) public {
        S memory st = t;
        S storage st2 = t;
        st.m[j] = v;
        st2.m[j] = v;
    }
    function get(uint i) public view returns (uint v) {
        S memory st = t;
        S storage st2 = t;
        v = st.m[i];
        return v == 0? st2.m[i] : st.m[i];
    }
}
