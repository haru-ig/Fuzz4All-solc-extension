pragma solidity ^0.8.0;
contract Sum
{
    uint public a;
    uint public b;
    function minmax(uint a, uint b) public returns(uint, uint)
    {
        uint min = a;
        uint max = b;
        uint counter = 2;
        while(b >= a) {
            min = min == max? min : a;
            max = max!= min? max : a;
            counter++;
        }
        return (min, max);
    }
}
