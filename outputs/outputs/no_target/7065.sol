pragma solidity ^0.8.0;
contract Test {
    function change() public view {
        uint x;
        x = 34;
        x++;
        if (x == 42) x--;
        uint z;
        z = 0;
        if (z + 1 == 10) z++;
    }
}
