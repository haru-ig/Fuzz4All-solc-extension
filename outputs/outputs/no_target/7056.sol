pragma solidity ^0.8.0;
contract Test {
    function change(uint x) public view {
        while (x == 0) {
            x = x + 8;
            if (x > 500) {
                x = x - 10;
                x--;
            } else {
                x = x + 4;
            }
            x = 0;
        }
        x = x - 6;
    }
}
