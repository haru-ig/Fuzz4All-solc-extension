pragma solidity ^0.8.0;
contract SemanticalEquiv1
{
    function testFunction()
        public
        pure
        returns (int64)
    {
        int x = 1;
        (int y; unchecked {
            y++;
            y--;
        });
        uint z = x + y;
        (z; unchecked {
            x += y;
        });
        return x + y;
    }







    contract Wrapper1
    {
        uint x;

        constructor()
        {
            x = 1;
        }

        function wrap1(int n)
        {
            x += n - 42;
            x -= 2;
        }
    }

    contract Modulo1
    {
        uint x;
        constructor()
        {
            x = 1;
        }

        function modulo1(int n)
        {
            x += n;
            x -= ((n >= 3) << 1);
            x -= ((1 << 1) - ((1 << 0) - n));
            x -= ((n < 0) << 1);
            x -= ((1 << 1) + ((n ^ 3) << 6));
            x -= ((n >= -3) << 10);
            x -= ((n & 1) << 19);
            x -= ((n>> 1) << 23);
            x -= ((n>> 5) << 29);
            x -= ((n & 3) << 32);
            x -= ((n>> 5) << 31);
        }
    }
}
