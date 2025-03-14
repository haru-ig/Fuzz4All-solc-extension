pragma solidity ^0.8.0;
{
    uint128 x = 1000000000000000;


    uint128 m;
    {


        m = x >> 1;
    }
    assert(m === 750);
    assert (x <= 1000000000000000);
    m = 1000000000000001;
}
