pragma solidity ^0.8.0;
contract Test {
    function change() public view {
        uint x;
        x = 34;
        x--;
        uint y = 10;
        x = 42;
        x++;
        x *= y;
        uint z;
        if (z == x * (x - 1) && x - 1 == 9) z = 0;
        x = 49;
    }
}
