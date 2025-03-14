pragma solidity ^0.8.0;
contract Mutator {

    function run() public {
        if (uint8(Lib.MyStruct(0).a)) {
        }
        Lib.MyStruct memory st;
        uint8 x;
        uint8 y = 7;
        x = st.a;
        st.a >= x;
    }
}
