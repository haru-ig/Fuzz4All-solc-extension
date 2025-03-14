pragma solidity ^0.8.0;
contract Array {
    uint8 a;
    function setA(uint8 _a) public pure {
        a = _a;
    }
    function getA() public pure returns (uint8) {
        return a;
    }
    function add(uint8 _a) public pure returns (uint8) {
        return a + _a;
    }
    function sub(uint8 _a) public pure returns (uint8) {
        return a - _a;
    }
    function min(uint8 _a) public pure returns (uint8) {
        return a < uint8(_a)? a : uint8(_a);
    }
    function max(uint8 _a) public pure returns (uint8) {
        return a > uint8(_a)? a : uint8(_a);
    }
    function sum(uint8[2]_a) public pure returns (uint8[2]) {
        return [uint8(uint(_a[0]) + uint(_a[1]))];
    }
    function set(uint8[2][3] memory _x) public pure {
        uint8 i;
        for (i = 0; i < 3; i++)
            _x[0], _x[1][i] = _x[1][i], _x[0][i];
    }
    function get() public pure returns (uint8[3][2]) {
        uint8[2][3] memory _x;
        _x = uint8[2][3]([uint8(uint(_x[0][0])), uint8(uint(_x[0][1])), uint8(uint(_x[0][2]))]);
        return (_x);
    }
    function sort() public {
        uint8 tmp;
        uint8 lowest = uint8(uint(uint(array[0])) | uint8(uint(array[1])));
        for (uint8 i = lowest + 1; i <= uint8(uint(array[1]))); i++) {
            for (uint8 j = i; j < uint8(uint(array[0])); j++) {
                if (uint8(uint(array[0])) < uint8(uint(array[j]))) {
                    tmp = uint8(uint(array[0]));
                    array[0] = uint8(uint(array[j]));
                    array[j] = tmp;
                }
            }
        }
    }
}
contract Math {
    function sqrt(uint256 x) public pure returns (uint256) {
        uint256 z = ((uint256(x) + 1) / 2) * 2;
