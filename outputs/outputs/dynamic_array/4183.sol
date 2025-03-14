pragma solidity ^0.8.0;
contract E {
    int n;
    function f(uint x, uint y) public {
        while (x > 0) {
            x--;
            y = y + 1;
        }
    }
}
