pragma solidity ^0.8.0;
int128 x;
function same() public pure {
    x = 10000000000000000000;
    x = (-9999999999999999999999999999999999999999);
    x = 0;
    x = -1;
}
