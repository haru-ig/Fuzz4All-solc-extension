pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T29S_call_data_array_semantics {
    struct Test { uint8 a; }
    function set(address _h, Test[] memory m1, Test[] memory m2) public {
        m1[0].a = uint8(m1[0].a);
        m1[0].a = m2[0].a;
        if (_h!= address(_h)) {
            m2[0].a = uint8(m2[0].a);
            m2[0].a = m1[0].a;
            if (_h == address(_h)) {
                m1[0].a = uint8(m1[0].a);
                m1[0].a = m2[0].a;
            }
        }
    }
}
contract T29X_call_data_array_semantics {
    struct Test { uint8 b; uint8 a; }
    function set(address _dest, Test[] memory m) public {
        m[0].a = uint8(m[0].a);
        m[1].a = uint8(m[1].a);
        m[0].a = m[1].a;
    }
}
contract T29Z_call_data_array_semantics {
    struct Test { uint8 c; uint8 b; uint8 a; }
    function set(address _dest, Test[] memory m) public {
        m[0].a = uint8(m[0].a);
        m[1].a = uint8(m[1].a);
        m[0].a = m[1].
