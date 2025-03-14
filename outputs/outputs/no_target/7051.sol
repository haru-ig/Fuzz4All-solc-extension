pragma solidity ^0.8.0;
contract Test {
    function change() public {
        uint x = 36;
        while (x < 68) {
            x++;
        }
        while (x > 0) {
            x--;
        }
        x = 0;
    }
}
