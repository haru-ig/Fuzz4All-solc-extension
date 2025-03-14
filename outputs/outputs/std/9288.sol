pragma solidity ^0.8.0;
contract Array
{
    constructor() public {

    }
    function findMin() internal view returns (uint)
    {
        return 10;
    }
    function findMax() internal view returns (uint)
    {
        return 10;
    }
    function findSum() internal view returns (uint)
    {
        return 10;
    }
    function set(uint i, uint value) internal {
        _array[i] = value;
    }
    function get(uint i) internal view returns (uint) {
        return _array_get(i);
    }
    function _array_get(uint i) internal view returns (uint) {
        return _array[i];
    }
    function _array_set(uint i, uint value) internal {
        _array[i] = value;
    }
    function insertAfter(uint i, uint x) internal {
        _array_set(i+1, _array[i]);
    }
    function compare(uint[2] memory a, uint[2] memory s) internal view returns (uint[2] memory) {
        return _array_cmp(a, s);
    }
    function _array_cmp(uint[2] memory a, uint[2] memory s) internal view returns (uint[2] memory) {
        return a[0]<s[0]?a:s;
    }
    function _array_swap(uint[2] memory a, uint z) internal {
        uint x = a[0];
        a[0] = a[z];
        a[z] = x;
    }
    function sliceFrom(uint from, uint to) public constant {
        assert (from <= to);
        uint n = to - from + 1;
        array[from..from+n-1] = uint[n]();
    }
}
