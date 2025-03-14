pragma solidity ^0.8.0;
contract Simple
{
    uint public x;
    uint public y;
    uint public z;
    function use_x_and_y() {
        while (x < 4)
            x++;
        z = 4;
        x = 2;
        y = 3;
        z = 1;
    }
    function test() public use_x_and_y pure {
    }
}
