pragma solidity ^0.8.0;
contract G {
    uint8 g;
    uint8 y;
    uint8 x;
    uint8 i;
    uint8 z;
    function someFunc(
        uint8 y, uint8 z
    ) public {
        g = g + 1;
        g = 0;
        call();
    }
    function call() internal {
        y = y + 1;
        z = z + 1;
        y = 0;
        z = 0;
        i = i + 1;
        i = 0;
        call();
    }
}
