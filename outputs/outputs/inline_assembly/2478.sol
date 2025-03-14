pragma solidity ^0.8.0;
library Comp2
{
    function add(uint a,uint b) public pure returns(uint ret)  {
        if(a==a&&b==b)
        {
            ret=a.add(b);
        }
        else
        {
            if(a==a)
                ret=b;
            else ret=a;
        }
    }
}
