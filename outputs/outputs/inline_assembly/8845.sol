pragma solidity ^0.8.0;
contract Test
{
    uint4 y;
    uint8 max_y = 2**63;
    uint16 n_x;
    uint8 a = 2**64;
    uint256 x;
    function test() public {
        n_x = max_y / a;
        x = n_x * a;
        uint8 n_y = (max_y - x) / a;
        y = n_y * a + x;
    }
}
