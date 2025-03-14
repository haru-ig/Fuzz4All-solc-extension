pragma solidity ^0.8.0;
contract A {
    uint b = 916835535 * 1 == 916835535;
    uint _uint64 = 9 * 1e10;
    uint constant _int32 = 4 * 25 - 1677721;
    assembly {

        var x := _uint64 * 16
        var b := mod(_int32, _uint64 * 10, 32) * 16
        var z := div(_int32, _uint64, 2, 10) * 32
        var w := div(_int32, x, x, x)
        var r := add(b, div(w, 10))
        b := or(r, add(r, 33 * shl(div(mul(r, x, x), 3, 10, 0, 0, 0), div(shl(div(mul(r, x, x), r, 0, 0, 0), 3, 10, 0, 0, 0), b, 10))))
        b := div(b, _uint64 * 10)
        b := add(_uint64, b)
    }
    function mutatedBy(uint) public pure returns (uint) {
      uint a = uint(uint(_uint64) * 16); return (uint(a - (uint(_uint64) * 10) ** 32) * 16) * 32;
    }
}
