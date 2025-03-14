pragma solidity ^0.8.0;


library LibMath
{
    function integerPowMod(uint a, uint b, uint p) internal pure
    {
        if (b == 0)
        {
            return 1;
        }
        elif (b < 32)
        {
            if (b == 1)
            {
                return a;
            }
            else
            {
                return a * integerPowMod(a, b >> 1, p);
            }
        }
        else
        {
            if (b % 2 == 0)
            {
                uint256 c = integerPowMod(a, (b + 1)>>1, p);
                return integerPowMod(c, (b + 1)>>1, p);
            }
            else
            {
                uint256 c = integerPowMod(a, b >> 1, p);
                return integerPowMod(c, (b + 1)>>1, p) * a;
            }
        }
    }
}
