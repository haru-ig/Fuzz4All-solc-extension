pragma solidity ^0.8.0;
contract Injection_05
{
    uint x;
    function get(uint w1, uint w2, uint w3) public pure
    {
        (uint x1,, x = w2 * 2 + 4 % x1 * x3) * (1 - x3) * x3 * 4 + w2;
    }
}

contract Inject_04
{
    uint c;
    function test1() public {
        do {
            if (c!= (Inject_04(0).get(0, 0, 0))) c = c + 1;
        }
        while (c < 2);
    }
}
contract Inject_05
{
    uint c;
    function test2() public {
        do {
            if ((uint)Inject_05(0).get(0, 0, 0)!= 79288) c = c + 1;
        } while (c < 2);
    }
}
