pragma solidity ^0.8.0;
library E {
    uint256[5] public constant c = [7, 6, 5, 4, 3];
    function setY(uint256[5] memory x_) public pure {
        c[1] = 9;}
}
