pragma solidity ^0.8.0;
contract Example
{

    mapping(address => uint) public balances;
    uint[] public numbers;
    uint[] public results;

    function add(uint _x) public
    {
        numbers.push(_x);

    }
    function show(uint j) public view returns (uint)
    {
        if (j < 0 || j > count(numbers)) return 0;
        else return numbers[j];
    }
    function count(uint[] memory _numbers) internal view returns (uint)
    {
        if (_numbers.length == 0) return 0;
        else return _numbers.length - 1;
    }
    function sum() public view returns (uint)
    {


        uint count = counts(results);

        uint sum = 0;
        uint countSum = 0;
        for (uint i; i < count; i++)
        {
            countSum = countSum + results[i];
        }

        return countSum;
    }
    function counts(uint[] memory _numbers) internal view returns (uint)
    {
        if (_numbers.length == 0) return 0;
        else
        {
            uint count = 1;
            uint sum = _numbers[0];
            for (uint i; i < (_numbers.length-1); i++)
            {
                count = count * _numbers[i];
                if (sum >= count) sum = sum / count;
                else
                {
                    if (sum == count) sum = sum * count;
                    else return 0;
                }
            }

            return count;
        }
    }
    function showResult(uint j) public view returns (uint)
    {
        if (j < 0 || j > count(numbers)) return 0;
        if (results.length == 0)
        {
            results.push(numbers[j]);
            results.push(numbers[j] + counts(numbers));
            return results[j];
        }
        else if (results.length ==2)
        {
            if (results[0] == numbers[j]) results[0] = results[0] + numbers[j];
            else results.push(numbers[j] + counts(numbers));
        }
        else
        {
            if (results[numbers.length - 1] == numbers[j])
            {
                results[numbers.length - 1] = results[numbers.length - 1] + numbers[j];
                results[results.length - 2] = results[results.length - 2] + counts(numbers);

            }
