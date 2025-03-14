pragma solidity ^0.8.0;
contract Test
{
    uint[67000] memory int_max = [2 ** 36 - 1] * [2 ** 36 - 1];
    uint x = 2 ** 36 - 1;
    uint y;
    function test() public {
        x = uint(2 ** 36 - 1) / x;
        y = x / uint(2 ** 0);
        y = x / uint(uint(2 ** 36) / uint(2 ** 36));
    }
}
