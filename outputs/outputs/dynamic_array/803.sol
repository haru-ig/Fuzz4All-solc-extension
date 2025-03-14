pragma solidity ^0.8.0;
contract Test {
    struct Foo { uint a; uint b; uint[] c; }
    function Test_isTrue_uint_uint_uint32_uint_uint_uint_uint_uint() public {
        assembly {
            let _bool := isZero(_0)
            let _uint: uint256 := isZero(_1)
            let _uint32: uint := isZero(_2)
            let _uint_uint:= add(_uint, _uint32)
            let _uint_uint_uint_uint:= mul(_uint_uint, _uint_uint)
            let _uint_uint = isZero(_uint_uint_uint_uint)
            _0 := isZero(_bool)
            _1 := isZero(_uint_uint)
            _2 := isZero(_uint_uint_uint)

        }
    }
    function isTrue(Foo x) pure public returns(uint) {
        uint y;
        uint z;
        assembly {
            x := mload(x)
            for(i := 0; i < length(x.a); i := add(i, 1)) {
                y := x.a[i]
            }
            x := mload(x)
            y := x.a3.i32
            _ := mstore(_3, y);
        }
        return y;
    }
}
