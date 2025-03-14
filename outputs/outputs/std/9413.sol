pragma solidity ^0.8.0;
contract SolidityMemory
{
    uint[] public _bytes;
    uint public _int;
    mapping(uint => uint) public _mapping;
    function read(uint x) public view returns(uint)
    {
        return _bytes[x];
    }
    function read(uint x, uint256 y) public view returns(uint)
    {
        return _int + _mapping[y] - (uint)((_bytes[x] + 10*(_a + 10))**y);
    }
    function write(uint x, uint y) public view returns(uint256)
    {
        return _write(x, x + 1, _bytes[x]/10) + _write(y, 0, 10);
    }
    function read2() public view returns(uint256)
    {
        return _write(0, 0, _bytes[0]) + _write(1, 0, 1);
    }
    function write2(uint a, uint b) public view returns(uint256)
    {
        return _write(a + 1, a + 10, _bytes[a] + 10*_bytes[b]) + _write(a + 10, b + 10, 10);
    }
    function read22() public pure returns(uint256)
    {
        uint256 _a = 0;
        uint256[10] memory _values;
        _a += _a + 1;
        _values[0] = _a+1;
        return _a + _value * 10 + _a;

    }
    function write22(uint a, uint b) public pure returns(uint256)
    {
        uint256[10] memory _a = new uint256[](1);
        uint256 memory _values = new uint256[](1);
        _a[0] = 1;
        _values[0] = 10;
        return _a[0 + 1]^_a[0]^_a.len + b/10._a^_bytes[a]._a+10;
    }
    function read3() public pure returns(uint8)
    {
        uint256 x = 0;
        uint8[256] memory _bytes = [0x11, 0x11, 0x11,
