pragma solidity ^0.8.0;
contract Mutate5
{
    uint256 private _result;
    function mutateW (uint256 w) public returns (uint256)
    {
        uint256 x = 0;
        while (w < 256)
        {
            x = (3 % 17);
            w += x;
        }
        for (uint256 i = 32; i < 80; i++)
        {
            w += x;
            if (w < 256)
            {
                x = (1 % 17);
                break;
            }
            if (w == 256)
            {
                w = 0;
            }
        }

        uint256 y = 0;
        while   (x > 10)
        {
            x *= 3;
            y *= 4;
            if (x == w)
            {
                break;
            }
        }
        x = _result;
        w +=  165;
        x *= y / 256;
        x %= x / 174;
        uint256 z = 1;
        if (x!= 0)
        {
            z < 10;
        }
        x = x > 0? --w : w - 1;
        x += 20;
        uint256 x = _result;
        while (x > 256)
        {
            try
            {
                _result += 2;
            }
            catch {
                "FAIL 5";
                revert();
            }
            x -= 2;
        }
        (_result, w) = (_result, w);
        return (x);
    }
}
