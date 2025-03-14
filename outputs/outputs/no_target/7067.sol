pragma solidity ^0.8.0;
contract Test2 {
    function change() public {
        uint x;
        x = 1;
        x--;
        uint z;
        z = -23;
        z = z - z;
        x = 33;
        x --;
        x = 0;
        x = x - 1;
        uint y;
        y = 0;
        if (y - 1 <= 9) z = 0;
        if (!(x <= 93)) z = 0;
        y = 45;
        y = y - y;
        x = -33;
    }
}
