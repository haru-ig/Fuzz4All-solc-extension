pragma solidity ^0.8.0;
contract Example
{
    mapping(address => uint) balances;
    function add(uint x) external returns (uint  )
    {
        if (x == 0) return 0;
        balances[msg.sender] += x;
        return x;
    }
    function sub(uint x) external returns (bool  )
    {
        if (x > balances[msg.sender]) return false;
        balances[msg.sender] -= x;
        return true;
    }
}


contract Array
{
    function min(uint[] memory a)  pure internal returns (uint min)
    {
        min = uint(-1);
        for (uint i = 0; i < a.length; i++)
        {
            if (min > a[i]) min = a[i];

        }
        return min;
    }
    function max(uint[] memory a)  pure internal returns (uint max)
    {
        max = uint(-1);
        for (uint i = 0; i < a.length; i++)
        {
            if (max < a[i]) max = a[i];

        }
        return max;
    }
    function sum(uint[] memory a) pure internal returns (uint sum)
    {
        for (uint i = 0; i < a.length; i++)
        {
            sum += a[i];
        }
        return sum;
    }
    function set(uint[] storage _array, uint _value, uint index)internal
    {
        if (index >= _array.length) revert();
        _array[index] = _value;
    }
    function get(uint[] memory _array, uint _index)  internal  returns (uint result)
    {
        if (_index>=_array.length) revert();
        result = uint(_array[_index]);
    }
    function sort(uint[] storage _array)internal
    {
        for (uint i = 0; i < _array.length - 1; i++)
        {
            uint minIndex = i;
            for (uint j = (1+i); j < _array.length; j++)
            {
                if (_array[minIndex] > _array[j])
                {
                    minIndex = j;
                }
            }
            uint temp = _array[i];
            _array[i] = _array[minIndex];
            _array[minIndex] = temp;
        }
    }


}
