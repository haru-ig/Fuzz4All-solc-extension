pragma solidity ^0.8.0;
contract Multiprecision {
    string constant _pi = "3.14159265358979";
    uint constant _small = 0xe19db397c13d4800;
    function multiplyByConstantValue(uint value) public {
        uint lo = (uint160(a) * uint160(a)) >> 32;
        uint hi = (uint160(value) * uint160(value)) >> 32;
        uint o = hi + lo;
        o >>= 31;
        uint m = a * value;
        uint n = a + value;
        uint lo2 = (n * n >> 8);
        uint hi2 = (o * o >> 8);
        uint g = lo + lo2 - hi;
        uint h = (a << 1) + value;
        uint i = (uint160(g) * uint160(g) >> 32);
        uint j = (g << 1) + i;
        uint k = (i << 1) + j;
        require(g <= h || (g <= k && k > h), "overflow");
    }
    function multiplyByRandomValue(uint value) public {
        int128 _m = 123456789 * value;
        int128 _result = 8 / 7 * _m - _small;
        uint256 _temp = _m;
        uint256 _temp1 = _result;
        uint256 _temp2 = _m / _temp;
        uint _temp3 = uint(_m);
        uint _temp4 = (_m << _temp2);
        uint256 _temp
