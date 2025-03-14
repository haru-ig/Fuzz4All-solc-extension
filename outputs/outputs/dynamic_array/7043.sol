pragma solidity ^0.8.0;
contract NoTest3
{
    function noOp()public
    {
        test memory t;
        for(uint i = 1; i <= 3; i *= 2)
        {
            t.test1 += i;
        }
        t.test2 = 256;
        t.t.test32[b"test"].test5[b"ttest"] += 1;
        uint8 x = 124;
        for(uint i = 1; i <= 3; i *= 2)
        {
            x = 256;
            t.test1++;
        }
        t.test1++;
        t.test1++;
        t.test40[b"test5"].test40[t.test2] = 888;
    }
    function
