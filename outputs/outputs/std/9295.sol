pragma solidity ^0.8.0;
contract DamnArray
{
    uint128 public array;
    constructor() public
    {
        array = 99999999999999999999999999999999999999;
    }
    function arrayWithMutations() public returns(uint128)
    {
        uint128 newNum = array / 1e16 * 5000;
        array = newNum / 450;
        uint128 num = (array + newNum) / 1e16;
        return num;
    }
}

pragma solidity ^0.7.0;
contract Array
{
    uint128 public array[100];

    constructor() public
    {
        for(uint16 i=0; i<100; ++i)
        {
            array[i] = i;
        }
    }


    function addArrays() public returns(uint128)
    {
        uint16 len = 0;
        for(uint16 j=0; j<100; ++j)
        {
            len += array[j];
        }
        uint128 result = 0;
        for(; len>0; --len)
        {
            result += array[len-1];
        }
