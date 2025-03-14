pragma solidity ^0.8.0;
contract semanticEquivalentMutation10
{
    function semanticEquivalentAfterMutation(uint8[] memory arr)
    public
    pure
    returns(uint8)
    {
    uint8 tmp = 2;
    uint8[] memory tmpArray = new uint8[](2);
    uint8 x = 2;
    for (uint8 i = 0; i < 5; i++)
    {
        x++;
    }
    for (uint8 i = 0; i < 6; i = i+1000)
    {
        tmpArray[1] = 2;
        if (x > 100)
        {
            arr[i] = x--;
        }
        else
        {
        x -= 1;
        }
    }
    tmp = x;
    }
}
