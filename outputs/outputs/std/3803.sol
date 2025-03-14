pragma solidity ^0.8.0;
contract Array {

    mapping (uint => bool) public array;
}
contract Convert {

    function toChars(unsigned int n) private pure returns (bytes memory result) { uint _n = n; uint _count = n.toString(16).length; if (_count > 256) { return; } while (_count > 0) { uint _rem = _n % 16; _n /= 16; _count--; result = bytes(48 + _rem).concat(result); } }
    function toBooleans(uint _n) returns (bool[] memory) { if (_n > 255) { return; } bytes memory b = toChars(_n); for (uint i = 0; i < b.length; i++) { if (i == b.length) { return new bool[](0); } else { b[i] = b[i].value == '1'; } } return cast(bytes); }
}
contract Math {

    function sqrt(uint n) private pure returns (uint) { if (n == 0) { return 0; } uint x = n >> 1; x = x * x; return x >> 1; }
}
contract Memory {
    uint[] array1 = [1, 3, 3, 5, 45, 89];
    uint[] array11;
    uint[] array20;
    uint[] array200;

    uint[] array33;
    uint[] array66;

    uint[] array1_mod13;
    uint[] array3_mod13;

    uint[] array1_mod13_copy;


    function testPassedInArray(uint[] memory arraya) public {
        array1 = copy(arraya);
    }


    function testArrayCopying(uint[] memory a) public {
        array1_mod13 = copy(a);
    }

    function testMod(uint[] memory x) public {
        uint res = computeMod13(x, 13);
    }

    function computeMod13(uint[] memory x, uint mod) public pure returns (uint) {
        uint s = 0;
        uint i = x.length - 1;
        uint xlen = x.length;
        uint k = 0;
        while (i > 0) { s += x[k] * x[i] % mod; i--; k++; }
        return s;
    }

    function sum(uint[] memory _x) public pure returns (uint) {
