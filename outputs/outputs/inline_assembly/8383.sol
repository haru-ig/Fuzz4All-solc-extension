pragma solidity ^0.8.0;
contract SolveAssembly5
{
    uint x = 0;
    uint y = 0;

    uint[] memory v;

    uint i;
    uint len = 6;

    function fill(uint length) public
    {
        for(i = 0; i < length; i++)
        {
            v[i] = x ^ y;
            x *= 0x5e85ead8004b1d;
            y -= 0x1f25e76e2889c2;
            x += 0x1f25e76e2889c2;
        }
    }

    function test2() public pure returns(uint)
    {
        v.set(uint[](0));
        v.append(0x12);
        v.append(uint(1));



        return v[1];
    }
}
