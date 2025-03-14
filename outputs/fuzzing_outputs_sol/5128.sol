pragma solidity ^0.8.0;
contract FallbackF {
    uint256[150] buffer;
    bool[150] buffer2;
    uint256[150][420] buffer3;
    bool[150][420] buffer4;
    uint256 x;
    function f() external pure {
        address[] memory a = [address(this), address(this), address(this)];
        address memory b = address(this);
        uint memory y = 128;
        for (uint i = 0; i < 150; i++) {
            buffer[i] = i;
        }
        buffer2[10] = false;
        buffer3[42][0] = 0;
        buffer4[42][17] = false;
        x;
        uint m = 42;
        for (uint i = 0; i < 420; i++) {
            buffer3[10][i] = -256;
        }
        for (uint i = 0; i < 420; i++) {
            buffer4[m][i] = 546;
        }
    }
}
