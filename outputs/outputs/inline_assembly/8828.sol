pragma solidity ^0.8.0;
contract Test
{
    uint constant int_max = 2**36 - 1;
    uint x = 2**36 - 1;
    uint z = x / 37;
    bool flag = true;
    function test() public {
        if (z < 5) {
            z = x / 37;
            z = x / 37;
        } else {
            z = x / 37;
            z = x / 37;
        }
    }
}
