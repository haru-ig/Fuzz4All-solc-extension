pragma solidity ^0.8.0;
contract Test {
    function change() public view {
        uint x;
        x = -1;
        x--; x--; x--; x--; x--; x--;
        uint z = 0;
        if (x == 0) z = 0;
        else if (x == 42) z = 0;
        else if (x == 99) z = 0;
        else if (!(x == 44)) z = 0;
        else if (x) z = 0;

        if (z >= 0 && z <= 99 && uint(z)!= uint(z)) z = 0;
        else if (z >= 0) z++;
    }
}
