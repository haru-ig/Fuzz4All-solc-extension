pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_5842328b04cb9947d0b8dd5e7612c37231452be4
{
    uint[]  b;
    uint x;
    uint y;
    constructor () public {
        x = 2;
        y = 0;
    }
    function f() public {
        uint n = 100;
        uint d = 20;
        uint[][] memory b_i;
        uint[] memory y_i;
        for (uint i=0;i<n;i++) {
            b_i[0] = new uint[](10);
            for (uint j=0;j<d;j++)
            {
              b_i[0][j] = b_i[0][j] + 1;
            }
            for (uint j=0;j<i;j++)
            {



                b_i[j+1] = b_i[j];

            }
            y_i = new uint[](10);
            for (uint j=0;j<d;j++)
            {
              y_i[j] = y_i[j] + 1;
            }
            for (uint j=0;j<d;j++)
            {



                y_i[j+1] = y_i[j];

            }
            _test(b_i, y_i);
            y = y + 1;
            x = x + 1;
        }
    }
}
