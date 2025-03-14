pragma solidity ^0.8.0;
contract contract1
{
    bytes12 x;
    bytes32[] y;
    bytes32[] z;
    bytes32[] w;
    bytes32[] v;

    function constructor2() public {
        x = 210;
        y = [34];
        z = [45];
        w = [4, 5, 6];
        v = [2, 4];
    }

    function test() public pure returns (uint256) {
        uint256 a = x + 1100;
        return 45 / (a+1) * (x + 6) * a*(x+1)*(x+1)*((3+(x+z.length))-1)*(y[x][x] + ((x+2) * y[x][x] * ((5+w[x][x])-1)));
    }

    function test2() public {
        x = 212121;
        uint256 value = 2;
        y = [88];
        z = [1];
        w = [34];
        v = [1, 3, 5];
    }

    function test3() public {
        uint256 value = (2 + 88) + ((y.length + 1) * (z.length + 4)) + 5;
    }
}
