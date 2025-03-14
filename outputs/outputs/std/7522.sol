pragma solidity ^0.8.0;
contract WorstCase4 {
    function worstCase() public pure returns (uint8) {
        uint8 x = 2;
        x -= 6;
        x -= 19;
        x = x / 52;
        uint8 y = 199;
        y -= 191;
        y -= 9;
        x += y / 40;
        uint8 z = 7;
        z *= 9;
        y += z;
        y -= 6;
        y = 197;
        y *= 42;
        z += z / 9;
        return (y);
    }
}
