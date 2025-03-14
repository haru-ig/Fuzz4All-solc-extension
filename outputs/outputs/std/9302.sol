pragma solidity ^0.8.0;
contract Array
{
    function findMinElement(uint128[] storage arrayOfNumbers) public pure returns (uint128)
    {
        return(arrayOfNumbers[0]);
    }
    function findMaxElement(uint128[] storage arrayOfNumbers) public pure returns (uint128)
    {
        return(arrayOfNumbers[1]);
    }
    function findSumOfElements(uint128[] storage arrayOfNumbers) public pure returns (uint128)
    {
        uint128 aSum = 0;
        for (uint i=2; i<arrayOfNumbers.length+1; i++) {
            aSum += arrayOfNumbers[i];
        }
        return(aSum);
    }
    function settingArray(uint128[] storage arrayOfNumbers) public pure
    {
        arrayOfNumbers[0] = 1;
        arrayOfNumbers[1] = 2;
    }
    function arrayWithAddress() public pure returns(address)
    {
        return (uint128[](address(this))[0]);
    }
}
