pragma solidity ^0.8.0;
contract Test {
    function change() public view {
        uint x;
        if (x == 0) x = 68;
        if (x == 68) x = 0;
        while (x > 68) {
            x++;
            if (x == 0) {
                x = 400;
            }
        }
        x = 36;
    }
}
