pragma solidity ^0.8.0;
contract MutatedCounter {
    uint internal x;
    uint internal y;
    function setX() {
        unchecked {
            if (x == 0) {
                x--;
                return;
            }
        }
    }
    function setY() {
        unchecked {
            if (y == 0) {
                y--;
                return;
            }
        }
    }
}
