pragma solidity ^0.8.0;
contract MutateMe
{
    uint[] public _numbers;
    uint constant _max = 100;
    uint constant _maxValue = 2**255;
    function sum_2() public returns(uint)
    {
        uint _sum=0;
        for (uint256 i = 0; i< _max; i++)
        {
            _sum += _numbers[i];
        }
        return _sum;
    }

    function mul_3(uint x) public  returns(uint)
    {
        uint _result=1;
        for (uint256 i = 0; i<_numbers.length; i++)
        {
            _result *= _numbers[i];
        }
        return _result;
    }

    function mul_4(uint x) public returns(uint)
    {
        uint _result=1;
        for (uint256 i = 0; i<_numbers.length; i++)
        {
            _result *= (x*_numbers[i]);
        }
        return _result;
    }

    function mul_5(uint x) public returns(uint)
    {
        uint _result=1;
        for (uint256 i = 0; i < _numbers.length; i++)
        {
            _result *= (_numbers[i]*x);
        }
        return _result;
    }

    function add_6(uint x) public  returns(uint)
    {
        uint _result=x;
        for (uint256 i = 1; i < _numbers.length; i++)
        {
            _result += pow(_result,_numbers[i-1]);
        }
        return _result;
    }

    function pow(uint x, uint y) public  returns(uint)
    {
        uint result = 1;
        while (y!= 0)
        {
            if (y % 2 == 1)
            {
                result = result.mul(x);
            }
            result = result.mul(x);
            y = y / 2;
            x = x.mul(x);
        }
        return result;
    }

    function add_7(uint x) public  returns(uint)
    {
        uint result = 0;
        for (uint256 i = _numbers.length - 1; i>0; i--)
        {
            result = result + _numbers[i];
        }
        result = result + x;
        return result;
    }

    function add_24(uint x) public returns(uint)
    {
        uint result = x;
        for (uint256 i = _numbers.length-1; i > 0; i--)
        {
            result = result + (x*_numbers[i]) / _numbers[i-1];
        }
        return result;
    }
}
