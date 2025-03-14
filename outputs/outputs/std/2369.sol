pragma solidity ^0.8.0;
contract MutatedEquivalent
{
    mapping[address[]][] array;
    function multiplyAdd1() public returns(int)
    {
        int result = 0;
        for (uint idx = 0; idx < array.length; idx++)
        {
            int n = array[idx][6];
            result = array[idx][5] * array[idx][4] - array[idx][5] * array[idx][0] + array[idx][2] * array[idx][6] + array[idx][3] * array[idx][5];
            array[idx][0] = array[idx][0] + array[idx][5];
            array[idx][5] = result;
        }
        return result;
    }
}
