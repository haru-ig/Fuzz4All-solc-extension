pragma solidity ^0.8.0;
contract Array
{
    function indexOf(uint[] memory array, uint value, uint from) public returns(uint)
    {
        uint res = array[from] < value? array[from] : value;
        if (array[from]!= res) {
            return toIndexOf(value, from, 0, array.length, array[from]);
        }
        return array.length - toIndexOf(value, from, 0, array.length, array[from]);
    }
    function toIndexOf(uint value, uint from, uint start, uint lenght, uint elem) private pure returns(uint) {
        uint res;
        uint max = lenght - 1;
        while(elem >= start && elem <= max)
        {
            res = elem;
            elem = toIndexOf(value, from, elem + 1, lenght, elem);
        }
        return res;
    }
}
