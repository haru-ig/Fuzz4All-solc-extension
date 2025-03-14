pragma solidity ^0.8.0;
contract C33 {
        function c() public {
            (uint _v; assembly {
                let _m := mload(0x1100)
                let _s := add(_m, 0x21)
                let _c := and(mload(0x20), 0x1)
                let _w := mload(_c)

                let _n := and(_s, 0xfffffffffffffff)
                let _s0 := zeroExt(_n)
                let _s2 := and(_s, not(_c))
                let _hi := mload(_s2)

                let _k := and(_s, not(_hi))
                let _w0 := and(_hi, not(_w))
                let _w2 := add(_w, _s0)
                let _k0 := mload(_k)
                let _k2 := add(_k0, _k0)
                let _k6 := add(_w2, _w0)

                _m := and(add(_k2, add(_k6)), mload(0x20))
                mstore(0x1100, _m)
                sstore(_s0, _w0)
                sstore(_s2, _w2)
                sstore(_k0, _k0)
                sstore(_k2, _k2)
                sstore(_k6, _k6)
                sstore(_m, _d)
                mstore(_n, _m)
                sstore(_s, _m)
                sstore(_c, _m)
            })
        }
}
contract Mutator
{
        function c() public {do {revert();} while(true);}
}
