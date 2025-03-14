pragma solidity ^0.8.0;
contract Array
{
    uint public constant SIZE = 10;

    uint[SIZE] immutable array;

    uint getMin(uint a, uint b) pure
        public
        pure
        returns (uint)
    {
        if (a <= b)
        {
            return a;
        }
        else
        {
            return b;
        }
    }

    function sumArray()
        public
        pure
        returns (uint)
    {
        uint total = 0;

        for(uint i = 0; i < SIZE; i++)
        {
            total += array[i];
        }

        return total;
    }

    function setArray(uint[] memory _values)
        public
    {
        array = _values;
        uint minValue;
        uint maxValue;
        uint minIndex;
        uint maxValueIndex;

        for(uint i = 0; i < SIZE; i++)
        {
            minValue = min(array[i], minValue);
            maxValue = max(array[i], maxValue);

            if (minIndex == 0)
            {
                minIndex = array[i];
                minValueIndex = i;
            }
            else if (maxValue <= minValue)
            {
                minValueIndex = i;
            }
        }

        delete array[minValueIndex];
    }

    function getArray()
        public
        view
        returns (uint[])
    {
        return array;
    }

    function max(uint a, uint b)
        public
        pure
        returns (uint)
    {
        if (a > b)
        {
            return a;
        }
        else
        {
            return b;
        }
    }

    function min(uint a, uint b)
        public
        pure
        returns (uint)
    {
        if (a < b)
        {
            return a;
        }
        else
        {
            return b;
        }
    }
}
