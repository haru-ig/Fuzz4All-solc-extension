pragma solidity ^0.8.0;
abstract contract Array2
{
    uint256 public size;
    uint256[] public arr;
    uint256 public result;
    constructor() public
    {
        size = 0;
    }
    function getSize() public view returns (uint256)
    {
        return size;
    }
    function printArray() public view
    {
        for (uint256 i = 0; i < size; i += 1)
            print(arr[i]);
    }
    function findMin() public pure
    {
        uint256 min = arr[0];
        for (uint256 i = 0; i < size; i += 1)
        {
            if (min > arr[i])
                min = arr[i];
        }
        return (min);
    }
    function findMax() public pure
    {
        uint256 max = arr[0];
        for (uint256 i = 0; i < size; i += 1)
        {
            if (max < arr[i])
                max = arr[i];
        }
        return (max);
    }
    function findArrayAveraging(uint256 len) public pure
    {
        uint256 sum = 0;
        for (uint256 i = 0; i < len; i += 1)
            sum += arr[i];

        uint256 avg = sum / len;
        return (avg);
    }
    function addNumber() public
    {
        for (uint256 i = 0; i < size - 1; i += 1)
        {
            arr[i] = arr[i + 1];
            result = result + arr[i];
        }
        arr[size - 1] = inputNumber() % 10;
    }
    function setA(uint256 x) public
    {
        a = x;
    }
    function outputNumber() public pure
    {
        return (result);
    }
