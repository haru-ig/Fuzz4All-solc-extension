pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_array_with_overflow2 {
    uint8 x;
    uint8[13] y;
    uint8[13][13] z;
    uint8[13][13] o;
    mapping(uint256 => uint8) zr;
    mapping(uint256 => uint8) oz;
    function set(TestCase[] memory t) public {
        y[t[0].a] = 123;
        z[t[1].a] = 123;
        o[t[2].a] = 123;
        zr[t[3].a] = 123;
        oz[t[4].a] = 123;
        emit Emit(t[0].a);
        emit Emit2(t[0].a, y[t[1].a]);
        emit Emit3(t[0].a, z[t[1].a]);
        emit Emit4(t[0].a, o[t[1].a]);
        emit Emit5(t[0].a, zr[t[2].a]);
        emit Emit6(t[0].a, oz[t[3].a]);
        emit Emit7(t[0].a, z[t[2].a]);
        emit Emit8(t[0].a, o[t[2].a]);
        emit Emit9(t[0].a, z[t[3].a]);
        emit Emit10(t[0].a, o[t[3].a]);
    }
    event Emit(uint256 a);
    event Emit2(uint256 a, uint256 d);
    event Emit3(uint256 a, uint256 d);
    event Emit4(uint256 a, uint256 d);
    event Emit5(uint256 a, uint256 d
