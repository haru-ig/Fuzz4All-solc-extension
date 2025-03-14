pragma solidity ^0.8.0;
contract Test {
    function change() public view {
        uint x;
        x = 34;
        x--;
        uint z;
        z = 0;
        if (z - 1 == 9) z = 0;
        if (!(x == 42)) z = 0;
        x = 42;
    }
}
