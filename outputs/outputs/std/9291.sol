pragma solidity ^0.8.0;
contract Solidity
{
    uint8[] public arr;
    constructor() public
    {
        for (uint i = 0; i < 3; ++i)
        {
            arr[i] = 1;
        }
        arr[3] = 2;
    }
    function multiplyArray() internal
    {
        for (uint i = 0; i < 3; ++i)
        {
            arr[i] = arr[i] * 2;
        }
    }
    function getFirst() internal view
    {
        return arr[0];
    }
    function getLast() internal view
    {
        return arr[2];
    }
}
