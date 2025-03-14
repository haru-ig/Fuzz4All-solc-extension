pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T2F8C_call_data_array_semantics {
    constructor(Test[] memory test) public {
        _;
    }
    struct Test { uint8 a; }
    function set(
        address _dest,
        Test[] memory m1,
        Test[] memory m2
    ) public returns(int){
        int a = 0;
        for (uint i = 0; i < m1.length; i++) {
            for (uint j = 0; j < m2.length; j++) {
                if (m1[i].a < m2[j].a) a++;
            }
        }
        return a;
    }
}
contract T0F9_dynamic_arrays_0 {

    struct Struct {
        uint8 c;
        uint8 b;
        uint8 a;
    }

    function f31 (Struct memory s) public pure returns (uint256 ret) {
        uint256 n;
        n = int((s.c + uint256(s.a)) % 5);
        n = int((s.b + uint256(s.a)) % 0x100);
        n = ((n << 1) | 0x55) + uint8(s.a >= 0x01);
        return n;
    }

    function g31 (Struct[] memory m) public pure returns (uint256 ret) {
        uint256 n;
        n = int((m[0].b + uint256(m[0].a)) % 0x60);
        n = int((m[1].b + uint256(m[1].a)) % 0x7F);
        n = ((n << 1) | 0x55) + uint8(m[0].a >= 0x81);
        return n;
    }

    uint256[2] a;
    uint256[2] b;
