pragma solidity ^0.8.0;
contract Array
{
    function findMin(uint x) public returns(uint)
    {
        uint min = x;
        for(uint i=1; i < 10; i++)
        {
            if(x < _values[i] && x < min) min = _values[i];
        }
        return min;
    }
    function returnMax(uint x, uint256 a, uint256 b) public returns(uint)
    {
        uint max = x;
        for(uint i=1; i < 10; i++)
        {
            if(x > _values[i] && x > max) max = _values[i];
        }
        return max;
    }
    function findSum(uint x) public returns(uint)
    {
        uint sum = 0;
        for(uint i=0; i < 10; i++) sum += _values[i];
        return sum;
    }
    function setArray(uint[10] memory values) public returns(uint256)
    {
        _values = values;
        _a = values[0];
    }
}
