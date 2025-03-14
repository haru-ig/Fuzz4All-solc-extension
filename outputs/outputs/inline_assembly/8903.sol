pragma solidity ^0.8.0;
contract EasierBad_SemiOptimallyCorrect
{
    uint internal x;
    constructor() public
    {
        x = 4294967290;
    }
    function test() public
    {
        uint256 tmp = x >> 1;
        x += 2;
        x *= 2;
        x--;
        x += x / 10;
        x++;
        x >>= 1;
        x = tmp;
        uint256 mask = 0xFE;
        uint256 x_mask = x >>> 1;
        x &= mask;
    }
    function set(uint256 _x) public {
        x = _x;
    }
}
