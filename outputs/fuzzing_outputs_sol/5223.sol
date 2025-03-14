pragma solidity ^0.8.0;
contract C23
{
        Modifier A(address foo)
        {foo;require(false);}
        function c() public
        {
            (uint256, uint256) x;
            x[0];
            x[2];
            uint8 y= 0;
            x[y++];
            x[y];
            x[y];
            x[1];
            x[y];
            x[y]++;
            x[1];
            x[y];
            x[y]++;
        }

        function d() public
        {

            uint8 x1= 0;
            (uint256, uint256) x2;
            x2[0];
            x2[x1++];
            x2[x1++];
            x2[x1++];
            x2[x1++] ;
            x2[x1++];
            x2[x1++];
            x2[x1++];
            x2[x1++];
            x2[x1++];
            x2[x1++];
            x2[x1++];
        }
}
