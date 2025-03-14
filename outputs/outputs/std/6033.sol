pragma solidity ^0.8.0;
library Array {
    function min(uint[] memory numbers) public pure returns (uint)
    {
        uint a = numbers[0];
        for (uint i = 1; i < numbers.length; i++)
        {
            if (a > numbers[i])
            {
                a = numbers[i];
            }
        }
        return a;
    }
    function max(uint[] memory numbers) public pure returns (uint)
    {
        uint a = numbers[0];
        for (uint i = 1; i < numbers.length; i++)
        {
            if (a < numbers[i])
            {
                a = numbers[i];
            }
        }
        return a;
    }
    function sum(uint[] memory numbers) public pure returns (uint)
    {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i ++)
        {
            sum += numbers[i];
        }
        return sum;
    }
    function set(uint[] storage dest, uint[] memory numbers) internal pure
    {

        for (uint i = 0; i < dest.length; i ++)
        {
            dest[i] = numbers[i];
        }
    }
    function get(uint[] storage dest, uint[] memory numbers) public view returns (uint[] memory)
    {
        return dest;
    }
    function sort(uint[] storage dest, uint[] memory numbers) private
    {
        uint current_min = Arithmetic.safeAdd(min(dest), 1);
        for (uint i = 0; i < dest.length; i ++)
        {
            uint current_max = Arithmetic.safeAdd(max(numbers), 1);
            if (dest[i] < current_min)
            {
                dest[i] = current_min;
                current_min++;
                dest[current_min - 1] = dest[i];
            }
            else if (dest[i] > current_max)
            {
                dest[i] = current_max;
                current_min--;
                dest[current_min + 1] = dest[i];
            }
            else
            {
                return;
            }
        }
        require(false);
    }
}
