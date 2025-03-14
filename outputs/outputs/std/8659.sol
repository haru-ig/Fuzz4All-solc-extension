pragma solidity ^0.8.0;
interface IExample
{
    function add1(uint x) external;
    function subtract1(uint x) external;
    function addAndSubtract1(uint x) external;
}
library Math
{
    event Log(uint x);
    function log(uint x) internal pure { emit Log(x); }

    function mul(uint a, uint b) internal pure returns(uint)
    {
        if(a == 0) return 0;
        uint result = b;
        while(a >= 2)
        {
            if((a & 1) > 0)
                result = result * 0.5;
            a >>= 1;
            uint temp = b;
            b = result;
            result = temp;
        }
        return result;
    }
    function sqrt(uint x) internal pure returns(uint)
    {
        if(x < 2) return x;
        uint middle = uint(0.5) * (x + 1);
        uint diff = 2;
        uint result = middle;
        while((result * result) <= x && diff >= 1)
        {
            uint test = uint(1.5) * result;
            if(test >= x) break;
            result += diff;
            diff = diff / 2;
        }
        return result - diff * result;
    }

    function compare(uint x, uint y) internal pure returns(int cmp)
    {
        cmp = uint(x - y) < uint(y - x)? -1 : (y - x) < 0? 1 : cmp;
    }
}
