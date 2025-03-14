pragma solidity ^0.8.0;
contract Mutate_0003
{
    uint x2 = 0;
    uint x3 = 0;
    function test() public
    {
        w1 = n1;
        w2 = n2;
        w3 = n1;
        x2 /= 2;
        x3 /= 4;
        x2++;
        x3++;
    }
}
