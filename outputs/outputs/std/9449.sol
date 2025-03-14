pragma solidity ^0.8.0;
contract Sum
{
    uint public a;
    uint public b;
    function minmax(uint[3] memory numbers) public returns(uint, uint)
    {
        uint min = numbers[0];
        uint max = numbers[1];
        uint counter = 2;
        while(numbers[1] >= numbers[counter]) {
            min = min == max? min : numbers[1];
            max = max!= min? max : numbers[1];
            counter++;
        }
        return (min, max);
    }
}
